<div class="py-5">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-7">
				<div class="card shadow">
					<div class="card-header">
						<h5>Register</h5>
					</div>
					<div class="card-body">
						<form action="<?php echo base_url('register'); ?>" method="post">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>First Name</label>
										<input type="text" name="first_name" value="<?php echo set_value('first_name'); ?>" class="form-control">
										<small style="color: red;"><?php echo form_error('first_name'); ?></small>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Last Name</label>
										<input type="text" name="last_name" value="<?php echo set_value('last_name'); ?>" class="form-control">
										<small style="color: red;"><?php echo form_error('last_name'); ?></small>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label>Email Address</label>
										<input type="email" name="email" value="<?php echo set_value('email'); ?>" class="form-control">
										<small style="color: red;"><?php echo form_error('email'); ?></small>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Password</label>
										<input type="password" name="password1" class="form-control">
										<small style="color: red;"><?php echo form_error('password1'); ?></small>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Confirm Password</label>
										<input type="password" name="password2" class="form-control">
										<small style="color: red;"><?php echo form_error('password2'); ?></small>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<button type="submit" class="btn btn-primary px-5">Register Now</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
