<?php 
defined('BASEPATH') OR exit("No direct script access allowed");

class StudentController extends CI_Controller {
	public function index()
	{
		$this->load->model('StudentModel', 'stud');
		// $student = $this->StudentModel->student_data();
		// alternate way to call a model 
		// $student = new StudentModel;
		// $student = $student->student_data();
		$student = $this->stud->student_data();
		echo "Student Name: ". $student;
	}

	public function show($id)
	{
		$this->load->model('StudentModel', 'stud');
		$select_stud = $this->stud->student_show($id);
		// echo $id;	
		echo $select_stud;
	}
}
?>
