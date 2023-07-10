<div class="container">
	<div class="row">
		<div class="col-md-12 mt-4">
			<div class="card">
				<div class="card-header">
					<h5>
						Edit Employee
						<a href="<?php echo base_url('employee'); ?>" class="btn btn-danger float-right">BACK</a>
					</h5>
				</div>
				<div class="card-body">
					<form action="<?php echo base_url('employee/update/' . $employee['id']); ?>" method="post">
						<div class="form-group">
							<label for="" style="font-weight: bold;">First Name</label>
							<input type="text" name="first_name" value="<?= $employee['first_name']; ?>" class="form-control">
							<small style="color: red;"><?php echo form_error('first_name'); ?></small>
						</div>

						<div class="form-group">
							<label for="" style="font-weight: bold">Last Name</label>
							<input type="text" name="last_name" value="<?= $employee['last_name']; ?>" class="form-control">
							<small style="color: red;"><?php echo form_error('last_name'); ?></small>
						</div>

						<div class="form-group">
							<label for="" style="font-weight: bold;">Phone Number</label>
							<input type="text" name="phone" value="<?= $employee['phone']; ?>" class="form-control">
							<small style="color: red;"><?php echo form_error('phone'); ?></small>
						</div>

						<div class="form-group">
							<label for="" style="font-weight: bold;">Email</label>
							<input type="text" name="email" value="<?= $employee['email']; ?>" class="form-control">
							<small style="color: red;"><?php echo form_error('email'); ?></small>
						</div>
				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-info ml-4">Update</button>
				</div>
				</form>
			</div>
		</div>
	</div>
</div>
