<div class="py-5">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-5">
				<?php if ($this->session->flashdata('status')) : ?>
					<div class="alert alert-danger alert-dismissible fade show" role="alert">
						<?= $this->session->flashdata('status'); ?>
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				<?php endif; ?>
				<div class="card shadow">
					<div class="card-header">
						<h5>Login Form</h5>
					</div>
					<div class="card-body">
						<form action="<?php echo base_url('login'); ?>" method="post">
							<div class="form-group">
								<label>Email Address</label>
								<input type="email" name="email" class="form-control" value="<?php echo set_value('email'); ?>" placeholder="Enter Email Address">
								<small style="color: red;"><?php echo form_error('email'); ?></small>
							</div>
							<div class="form-group">
								<label>Password</label>
								<input type="password" name="password" class="form-control" placeholder="Enter Password">
								<small style="color: red;"><?php echo form_error('password'); ?></small>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-success">Login Now</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
