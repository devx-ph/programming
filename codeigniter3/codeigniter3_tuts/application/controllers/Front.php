<?php
defined('BASEPATH') or exit('No direct access script allowed');

class Front extends CI_Controller
{
	public function index()
	{
		$this->load->view('template/header');
		$this->load->view('landing');
		$this->load->view('template/footer');
	}
}
