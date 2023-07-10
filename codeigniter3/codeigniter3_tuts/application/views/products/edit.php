<div class="py-5">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<?php if ($this->session->flashdata('status')) : ?>
					<div class="alert alert-success alert-dismissible fade show" role="alert">
						<?= $this->session->flashdata('status'); ?>
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				<?php endif; ?>
				<div class="card shadow">
					<div class="card-header">
						<h4>
							Edit Image - Product Data in Codeigniter 3.x
							<a href="<?= base_url('products'); ?>" class="btn btn-danger float-right">BACK</a>
						</h4>
					</div>
					<div class="card-body">
						<form action="<?= base_url('products/update/' . $product->id); ?>" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label>Produt Name</label>
								<input type="text" name="name" class="form-control" value="<?= $product->name; ?>" placeholder="Enter Product Name">
								<small style="color: red;"><?= form_error('name'); ?></small>
							</div>
							<div class="form-group">
								<label>Product Description</label>
								<?php
								$this->load->helper('form');

								$data = [
									'name' => 'description',
									'class' => 'form-control',
									'placeholder' => 'Enter Product Description',
									'rows' => '6',
									'value' => $product->description
								];

								echo form_textarea($data);
								?>
								<small style="color: red;"><?= form_error('description'); ?></small>
							</div>
							<div class="form-group">
								<label>Produt Price</label>
								<input type="number" name="price" class="form-control" value="<?= $product->price; ?>" placeholder="Enter Product Price">
								<small style="color: red;"><?= form_error('price'); ?></small>
							</div>
							<div class="form-group">
								<label>Produt Image</label>
								<input type="hidden" name="old_image" value="<?= $product->image; ?>">
								<input type="file" name="prod_image" class="form-control">
								<small style="color: red;">
									<?php if (isset($imageError)) {
										echo $imageError;
									}
									?>
								</small>
							</div>
							<div class="form-group">
								<button type="submit" name="prod_update" class="btn btn-info px-5">Update</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<img src="<?= base_url('images/' . $product->image); ?>" class="w-100" alt="Product Image">
			</div>
		</div>
	</div>
</div>
