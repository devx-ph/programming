<div class="py-4">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card shadow">
					<div class="card-header">
						<h4>403 Forbidden</h4>
					</div>
					<div class="card-body">
						<?php if ($this->session->flashdata('status')) : ?>
							<div class="alert alert-warning">
								<?= $this->session->flashdata('status'); ?>
							</div>
						<?php endif; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
