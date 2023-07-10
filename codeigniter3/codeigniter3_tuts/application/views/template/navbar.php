<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="#">CodeIgniter Crash Course</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item active">
				<a class="nav-link" href="<?= base_url(); ?>">Home <span class="sr-only">(current)</span></a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<?= base_url('userpage'); ?>">User-Page</a>
			</li>
			<?php if ($this->session->userdata('authenticated') == 2) : ?>
				<li class="nav-item">
					<a class="nav-link" href="<?= base_url('adminpage'); ?>">Admin-Page</a>
				</li>
			<?php endif; ?>
			<?php if (!$this->session->has_userdata('authenticated')) : ?>
				<li class="nav-item">
					<a class="nav-link" href="<?= base_url('register'); ?>">Register</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="<?= base_url('login'); ?>">Login</a>
				</li>
			<?php endif; ?>

			<?php if ($this->session->has_userdata('authenticated')) : ?>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
						<?= $this->session->userdata('auth_user')['first_name']; ?>
						<?= $this->session->userdata('auth_user')['last_name']; ?>
					</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="<?= base_url('logout'); ?>">Logout</a>
					</div>
				</li>
			<?php endif; ?>
		</ul>
	</div>
</nav>
