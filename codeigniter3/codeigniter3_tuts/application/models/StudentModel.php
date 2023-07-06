<?php
class StudentModel extends CI_Model
{
	public function student_data()
	{
		$studclass = $this->student_class();
		return $stud_name = "devx " . "his class is: " . $studclass;
	}

	private function student_class()
	{
		return $stud_name = "BSIT";
	}

	public function student_show($id)
	{
		if ($id == '1') {
			return $result = 'User 1';
		} elseif ($id == '2') {
			return $result = 'User 2';
		}
	}

	public function demo()
	{
		$title = "Hello I am Kristian. I am inside StudentModel";
		return $title;
	}
}
