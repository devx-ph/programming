<?php

class EmployeeModel extends CI_Model
{
	public function getEmployee()
	{
		$query = $this->db->get('employee');
		return $query->result();
	}

	public function insertEmployee($data)
	{
		return $this->db->insert('employee', $data);
	}

	public function editEmployee($id)
	{
		$query = $this->db->get_where('employee', ['id' => $id]);
		return $query->row_array();
	}

	public function updateEmployee($data, $id)
	{
		$this->db->update('employee', $data, ['id' => $id]);
	}

	public function deleteEmployee($id)
	{
		$this->db->delete('employee', ['id' => $id]);
	}

	public function deleteSelectedEmp($checked_id)
	{
		$this->db->where_in('id', $checked_id);
		return $this->db->delete('employee');
	}
}
