<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Authentication extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('session');

		if ($this->session->has_userdata('authenticated')) {
			if ($this->session->userdata('authenticated') == '1') {
			}
		} else {
			$this->session->set_flashdata('status', 'Login first!');
			redirect(base_url('login'));
		}
	}

	public function check_isAdmin()
	{
		if ($this->session->has_userdata('authenticated')) {
			if ($this->session->userdata('authenticated') != 2) {
				$this->session->set_flashdata('status', 'Access denied! You are not an admin');
				redirect(base_url('403'));
			}
		} else {
			$this->session->set_flashdata('status', 'Login first!');
			redirect(base_url('login'));
		}
	}
}
