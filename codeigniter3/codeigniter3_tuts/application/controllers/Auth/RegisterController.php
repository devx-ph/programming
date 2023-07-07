<?php
defined('BASEPATH') or exit('No direct script access allowed');

class RegisterController extends CI_Controller
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
		$this->load->view('template/header.php');
		$this->load->view('auth/register.php');
		$this->load->view('template/footer.php');
	}

	public function register()
	{
		$this->form_validation->set_rules('first_name', 'First Name', 'trim|required|alpha');
		$this->form_validation->set_rules('last_name', 'Last Name', 'trim|required|alpha');
		$this->form_validation->set_rules('email', 'Email Address', 'trim|required|valid_email|is_unique[users.email]');
		$this->form_validation->set_rules('password1', 'Password', 'trim|required|md5');
		$this->form_validation->set_rules('password2', 'Confirm Password', 'trim|required|matches[password1]|md5');

		if ($this->form_validation->run() == FALSE) {
			$this->index();
		} else {
			$data = array(
				'first_name' => $this->input->post('first_name'),
				'last_name' => $this->input->post('last_name'),
				'email' => $this->input->post('email'),
				'password' => $this->input->post('password1'),
			);

			$register_user = new UserModel;
			$success = $register_user->registerUser($data);

			if ($success) {
				$this->session->set_flashdata('status', 'Registered successfully! Go to Login');

				redirect(base_url('login'));
			} else {
				$this->session->set_flashdata('status', 'Something went wrong!');

				redirect(base_url('register'));
			}
		}
	}
}
