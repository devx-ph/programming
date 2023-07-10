<?php
defined('BASEPATH') or exit('No direct script access allowed');

class ProductController extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library(array('form_validation', 'session'));
		$this->load->helper('form');

		$this->load->model('ProductModel');
	}

	public function index()
	{
		$this->load->view('template/header');

		$products = new ProductModel;
		$data['products'] = $products->getProducts();

		$this->load->view('products/index', $data);
		$this->load->view('template/footer');
	}

	public function create()
	{
		$this->load->view('template/header');
		$this->load->view('products/create');
		$this->load->view('template/footer');
	}

	public function store()
	{
		$this->form_validation->set_rules('name', 'Product Name', 'required');
		$this->form_validation->set_rules('description', 'Product Description', 'required');
		$this->form_validation->set_rules('price', 'Product Price', 'required');

		if ($this->form_validation->run()) {
			$ori_filename = $_FILES['prod_image']['name'];
			$new_name = time() . "-" . str_replace(' ', '-', $ori_filename);

			$config = [
				'upload_path' => './images/',
				'allowed_types' => 'gif|jpg|png',
				'file_name' => $new_name
			];

			$this->load->library('upload', $config);

			if (!$this->upload->do_upload('prod_image')) {
				$imageError = array('imageError' => $this->upload->display_errors());

				$this->load->view('template/header');
				$this->load->view('products/create', $imageError);
				$this->load->view('template/footer');
			} else {
				$prod_filename = $this->upload->data('file_name');

				$data = [
					'name' => $this->input->post('name'),
					'description' => $this->input->post('description'),
					'price' => $this->input->post('price'),
					'image' => $prod_filename
				];

				$product = new ProductModel;
				$success = $product->insertProduct($data);

				if ($success) {
					$this->session->set_flashdata('status', 'Product Inserted Successfully!');

					redirect(base_url('products/add'));
				}
			}
		} else {
			$this->create();
		}
	}

	public function edit($id)
	{
		$this->load->view('template/header');

		$product = new ProductModel;
		$data['product'] = $product->editProduct($id);

		$this->load->view('products/edit', $data);
		$this->load->view('template/footer');
	}

	public function update($id)
	{
		$this->form_validation->set_rules('name', 'Product Name', 'required');
		$this->form_validation->set_rules('description', 'Product Description', 'required');
		$this->form_validation->set_rules('price', 'Product Price', 'required');

		if ($this->form_validation->run()) {
			$old_filename = $this->input->post('old_image');
			$new_filename = $_FILES['prod_image']['name'];

			if ($new_filename == true) {
				$update_filename = time() . "-" . str_replace(' ', '-', $_FILES['prod_image']['name']);
				$config = [
					'upload_path' => './images/',
					'allowed_types' => 'jpg|png|gif',
					'file_name' => $update_filename
				];
				$this->load->library('upload', $config);

				if ($this->upload->do_upload('prod_image')) {
					if (file_exists('./images/' . $old_filename)) {
						unlink('./images/' . $old_filename);
					}
				}
			} else {
				$update_filename = $old_filename;
			}

			$data = [
				'name' => $this->input->post('name'),
				'description' => $this->input->post('description'),
				'price' => $this->input->post('price'),
				'image' => $update_filename
			];

			$product = new ProductModel;
			$result = $product->updateProduct($data, $id);

			if ($result) {
				$this->session->set_flashdata('status', 'Product Updated Successfully!');

				redirect(base_url('products/edit/' . $id));
			}
		} else {
			return $this->edit($id);
		}
	}

	public function delete($id)
	{
		$product = new ProductModel;

		if ($product->checkProductImage($id)) {
			$data = $product->checkProductImage($id);

			if (file_exists('./images/' . $data->image)) {
				unlink('./images/' . $data->image);
			}

			$product->deleteProduct($id);
			$this->session->set_flashdata('status', 'Product data and image Deleted Successfully!');
			redirect(base_url('products'));
		}
	}
}
