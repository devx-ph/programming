<div class="py-5">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-9">
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
							Insert Image - Product Data in Codeigniter 3.x
							<a href="<?= base_url('products'); ?>" class="btn btn-danger float-right">BACK</a>
						</h4>
					</div>
					<div class="card-body">
						<form action="<?= base_url('products/add'); ?>" method="post" enctype="multipart/form-data">
							<div class="form-group">
								<label>Produt Name</label>
								<input type="text" name="name" class="form-control" value="<?= set_value('name'); ?>" placeholder="Enter Product Name">
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
									'value' => set_value('description')
								];

								echo form_textarea($data);
								?>
								<small style="color: red;"><?= form_error('description'); ?></small>
							</div>
							<div class="form-group">
								<label>Produt Price</label>
								<input type="number" name="price" class="form-control" value="<?= set_value('price'); ?>" placeholder="Enter Product Price">
								<small style="color: red;"><?= form_error('price'); ?></small>
							</div>
							<div class="form-group">
								<label>Produt Image</label>
								<input type="file" name="prod_image" class="form-control">
								<small style="color: red;">
									<?php if (isset($imageError)) {
										echo $imageError;
									}
									?>
								</small>
							</div>
							<div class="form-group">
								<button type="submit" name="prod_save" class="btn btn-primary px-5">Save</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
