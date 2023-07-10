<?php
defined('BASEPATH') or exit('No direct script access allowed');

class LoginController extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();

		if ($this->session->has_userdata('authenticated')) {
			$this->session->set_flashdata('status', 'You are already Logged in!');
			redirect(base_url('userpage'));
		}

		$this->load->helper('form');
		$this->load->library('form_validation', 'session');

		$this->load->model('UserModel');
	}

	public function index()
	{
		$this->load->view('template/header');
		$this->load->view('auth/login');
		$this->load->view('template/footer');
	}

	public function home()
	{
		$this->load->view('template/header');
		$this->load->view('welcome_message');
		$this->load->view('template/footer');
	}

	public function login()
	{
		$this->form_validation->set_rules('email', 'Email Address', 'trim|required|valid_email');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|md5');

		if ($this->form_validation->run() == FALSE) {
			$this->index();
		} else {
			$data = [
				'email' => $this->input->post('email'),
				'password' => $this->input->post('password'),
			];

			$user = new UserModel;
			$result = $user->loginUser($data);

			if ($result != false) {
				$auth_userdetails = [
					'first_name' => $result->first_name,
					'last_name' => $result->last_name,
					'email' => $result->email,
				];

				$this->session->set_userdata('authenticated', $result->role_as);
				$this->session->set_userdata('auth_user', $auth_userdetails);

				$this->session->set_flashdata('status', 'You are Logged in successfully');
				redirect(base_url('userpage'));
			} else {
				$this->session->set_flashdata('status', 'Invalid Email Address or Password');
				redirect(base_url('login'));
			}
		}
	}
}
