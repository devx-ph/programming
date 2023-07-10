<?php
defined('BASEPATH') or exit('No direct script access allowed');

class EmployeeController extends CI_Controller
{
	public function index()
	{
		$this->load->view('template/header');

		$this->load->model('EmployeeModel', 'emp');
		/* $data['employee'] = $this->emp->getEmployee(); */
		/* $this->load->view('frontend/employee', $data); */

		// alternative way
		$employee = $this->emp->getEmployee();
		$this->load->view('frontend/employee', ['employee' => $employee]);

		$this->load->view('template/footer');
	}

	public function create()
	{
		$this->load->view('template/header');
		$this->load->view('frontend/create');
		$this->load->view('template/footer');
	}

	public function store()
	{
		$this->form_validation->set_rules('first_name', 'First Name', 'required');
		$this->form_validation->set_rules('last_name', 'Last Name', 'trim|required');
		$this->form_validation->set_rules('phone', 'Phone Number', 'trim|required');
		$this->form_validation->set_rules('email', 'Email Address', 'trim|required');

		if ($this->form_validation->run() == FALSE) {
			$this->create();
		} else {
			$data = [
				'first_name' => $this->input->post('first_name'),
				'last_name' => $this->input->post('last_name'),
				'phone' => $this->input->post('phone'),
				'email' => $this->input->post('email'),
			];

			$this->load->model('EmployeeModel', 'emp');
			$this->emp->insertEmployee($data);

			$this->session->set_flashdata('status', 'Employee Data inserted Successfully');

			redirect(base_url('employee'));
		}
	}

	public function edit($id)
	{
		$this->load->view('template/header');

		$this->load->model('EmployeeModel', 'emp');
		$employee = $this->emp->editEmployee($id);

		$this->load->view('frontend/edit', ['employee' => $employee]);

		$this->load->view('template/footer');
	}


	public function update($id)
	{
		$this->form_validation->set_rules('first_name', 'First Name', 'trim|required');
		$this->form_validation->set_rules('last_name', 'Last Name', 'trim|required');
		$this->form_validation->set_rules('phone', 'Phone', 'trim|required');
		$this->form_validation->set_rules('email', 'Email Address', 'trim|required');

		if ($this->form_validation->run()) :
			$data = [
				'first_name' => $this->input->post('first_name'),
				'last_name' => $this->input->post('last_name'),
				'phone' => $this->input->post('phone'),
				'email' => $this->input->post('email'),
			];

			$this->load->model('EmployeeModel', 'emp');
			$this->emp->updateEmployee($data, $id);

			$this->session->set_flashdata('status', 'Employee Data updated Successfully');

			redirect(base_url('employee'));
		else :
			$this->edit($id);
		endif;
	}

	public function delete($id)
	{
		$this->load->model('EmployeeModel', 'emp');
		$this->emp->deleteEmployee($id);

		$this->session->set_flashdata('status', 'Employee Data deleted Successfully');

		redirect(base_url('employee'));
	}

	public function deleteEmpall()
	{
		if (isset($_POST['deleteEmpBtn'])) {
			if (!empty($this->input->post('checkbox_value'))) {
				$checkedEmp = $this->input->post('checkbox_value');
				$checked_id = [];

				foreach ($checkedEmp as $row) {
					array_push($checked_id, $row);
				}

				$this->load->model('EmployeeModel', 'emp');
				$this->emp->deleteSelectedEmp($checked_id);

				$this->session->set_flashdata('status', 'Employee selected data deleted');
				redirect(base_url('employee'));
			} else {
				$this->session->set_flashdata('status', 'Select atleast any ID');
				redirect(base_url('employee'));
			}
		}
	}
}
