<?php
defined('BASEPATH') or exit('No direct script access allowed');

class PageController extends CI_Controller
{
	public function index()
	{
		echo "I am index Method - Page controller  HOME in url";
	}

	public function aboutus()
	{
		echo "I am about page";
	}

	public function blog($blog_url = '')
	{
		echo "$blog_url";

		$this->load->view('blogviews');
	}

	public function blogedit($blogedit_url = '')
	{
		echo "$blogedit_url";

		$this->load->view('blogedit');
	}

	public function demo()
	{
		$this->load->model('StudentModel', 'stud');
		$title = $this->stud->demo();
		/* $data['title'] = "Hello I am devx."; */
		$data['title'] = $title;
		$data['body'] = "Welcome to my world";
		$this->load->view('demopage', $data);
	}
}
