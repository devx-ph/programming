<div class="container">
	<div class="row">
		<div class="col-md-12 mt-4">
			<?php if ($this->session->flashdata('status')) : ?>
				<div class="alert alert-success">
					<?= $this->session->flashdata('status'); ?>
				</div>
			<?php endif; ?>
			<div class="card">
				<div class="card-header">
					<h5>
						How to fetch data from database in CodeIgniter
						<a href="<?php echo base_url('employee/add'); ?>" class="btn btn-primary float-right">Add Employee</a>
					</h5>
				</div>
				<div class="card-body">
					<table id="myTable" class="table table-bordered">
						<thead>
							<tr>
								<th>ID</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Phone No.</th>
								<th>Email Address</th>
								<th>Edit</th>
								<th>Delete</th>
								<th>Confirm Delete</th>
							</tr>
						</thead>
						<tbody id="employee_tbody">
							<?php foreach ($employee as $row) : ?>
								<tr>
									<td><?php echo $row->id; ?></td>
									<td><?php echo $row->first_name; ?></td>
									<td><?php echo $row->last_name; ?></td>
									<td><?php echo $row->phone; ?></td>
									<td><?php echo $row->email; ?></td>
									<td>
										<a href="<?php echo base_url('employee/edit/' . $row->id); ?>" class="btn btn-success">Edit</a>
									</td>
									<td>
										<a href="<?php echo base_url('employee/delete/' . $row->id); ?>" class="btn btn-danger">Delete</a>
									</td>
									<td>
										<button type="button" class="btn btn-danger confirm-delete" value="<?= $row->id; ?>">Confim Delete</button>
									</td>
								</tr>
							<?php endforeach; ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
