<div class="py-5">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-12">
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
						<h5>Admin Page</h5>
					</div>
					<div class="card-body">
						<h6>You are in Admin - Dashboard</h6>
						<h5>First Name: <?= $this->session->userdata('auth_user')['first_name']; ?></h5>
						<h5>Last Name: <?= $this->session->userdata('auth_user')['last_name']; ?></h5>
						<h5>Email Address: <?= $this->session->userdata('auth_user')['email']; ?></h5>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
