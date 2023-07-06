<div class="container">
	<div class="row">
		<div class="col-md-12 mt-4">
			<div class="card">
				<div class="card-header">
					<h5>
						How to insert Employee data into database
						<a href="<?php echo base_url('employee'); ?>" class="btn btn-danger float-right">BACK</a>
					</h5>
				</div>
				<div class="card-body">
					<form action="<?php echo base_url('employee/store'); ?>" method="post">
						<div class="form-group">
							<label for="" style="font-weight: bold;">First Name</label>
							<input type="text" name="first_name" value="<?php echo set_value('first_name'); ?>" class="form-control">
							<small style="color: red;"><?php echo form_error('first_name'); ?></small>
						</div>

						<div class="form-group">
							<label for="" style="font-weight: bold">Last Name</label>
							<input type="text" name="last_name" value="<?php echo set_value('last_name'); ?>" class="form-control">
							<small style="color: red;"><?php echo form_error('last_name'); ?></small>
						</div>

						<div class="form-group">
							<label for="" style="font-weight: bold;">Phone Number</label>
							<input type="tel" name="phone" value="<?php echo set_value('phone'); ?>" class="form-control" pattern="[0-9]{4}[0-9]{3}[0-9]{4}">
							<small style="font-style: italic; color: grey;">Format: 09991231234, maximum of 11 characters.</small>
							<small style="color: red;"><?php echo form_error('phone'); ?></small>
						</div>

						<div class="form-group">
							<label for="" style="font-weight: bold;">Email</label>
							<input type="email" name="email" value="<?php echo set_value('email'); ?>" class="form-control">
							<small style="color: red;"><?php echo form_error('email'); ?></small>
						</div>
				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-primary ml-4">Save</button>
				</div>
				</form>
			</div>
		</div>
	</div>
</div>
