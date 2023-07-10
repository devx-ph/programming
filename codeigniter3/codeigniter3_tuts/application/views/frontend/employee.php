<div class="container">
	<div class="row">
		<div class="col-md-12 mt-4">
			<?php if ($this->session->flashdata('status')) : ?>
				<div class="alert alert-primary">
					<?= $this->session->flashdata('status'); ?>
				</div>
			<?php endif; ?>
			<div class="card">
				<div class="card-header">
					<h5>
						Employee Data
						<a href="<?php echo base_url('employee/add'); ?>" class="btn btn-primary float-right">Add Employee</a>
					</h5>
				</div>
				<div class="card-body">
					<form action="<?= base_url('employee/deleteall'); ?>" method="post">
						<table id="myTable" class="table table-bordered table-hover table-responsive" style="width: 100%;">
							<thead>
								<tr>
									<th style="width: 6em;" class="text-center">
										<button type="sumbit" name="deleteEmpBtn" class="btn btn-danger btn-sm">Delete All</button>
									</th>
									<th>ID</th>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Phone No.</th>
									<th>Email Address</th>
									<th>Edit</th>
									<th>Delete</th>
									<th style="width: 8em;">Confirm Delete</th>
								</tr>
							</thead>
							<tbody id=" employee_tbody">
								<?php foreach ($employee as $row) : ?>
									<tr>
										<td class="text-center">
											<input type="checkbox" name="checkbox_value[]" value="<?= $row->id ?>">
										</td>
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
										<td class="text-center">
											<button type="button" class="btn btn-danger confirm-delete" value="<?= $row->id; ?>">Confim Delete</button>
										</td>
									</tr>
								<?php endforeach; ?>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
