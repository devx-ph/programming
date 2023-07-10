<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ProductModel extends CI_Model
{
	public function getProducts()
	{
		$query = $this->db->get('products');
		return $query->result();
	}

	public function insertProduct($data)
	{
		return $this->db->insert('products', $data);
	}

	public function editProduct($id)
	{
		$query = $this->db->get_where('products', ['id' => $id]);
		return $query->row();
	}

	public function updateProduct($data, $id)
	{
		return $this->db->update('products', $data, ['id' => $id]);
	}

	public function checkProductImage($id)
	{
		$query = $this->db->get_where('products', ['id' => $id]);
		return $query->row();
	}

	public function deleteProduct($id)
	{
		return $this->db->delete('products', ['id' => $id]);
	}
}
