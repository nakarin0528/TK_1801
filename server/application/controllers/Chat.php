<?php
class Chat extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		session_start();
	}

	function index()
	{
		$room_id = $this->input->get('room');
		$tourist_user_id = $this->input->get('tourist');
		$guide_user_id = $this->input->get('guide');
		if (isset($tourist_user_id) && isset($guide_user_id)) {
			// ガイド依頼の履歴をDBへ蓄積
			$this->guidance->register(array(
				'customer_user_id' => $tourist_user_id,
				'guide_user_id' => $guide_user_id,
				'status' => 'active',
				'created_by_ip_address' => ip2long($_SERVER['REMOTE_ADDR']),
			));
		}
		if (!isset($_SESSION['user_id']) || ($this->user->count(array('id' => $_SESSION['user_id'])) === 0)) {
			redirect('/login');
		} else {
			$this->smarty->view('chat.tpl', array(
				'user' => $this->user->get('*', array('id' => $_SESSION['user_id'], 'chat_id' => $this->input->get('id'))),
				'room_id' => $room_id,
			));
		}
	}
}
