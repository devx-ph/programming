<div class="py-5">
	<div class="container">
		<div class=" row justify-content-center" ?>
			<div class="col-md-12">
				<div class="card shadow">
					<div class="card-header">
						<h4>
							Image CRUD - Codeigniter 3.x
							<a href="<?= base_url('products/add'); ?>" class="btn btn-primary float-right">Add Products</a>
						</h4>
						<div class="card-body">
							<table id="myTable" class="table table-bordered table-hover">
								<thead>
									<tr>
										<th>ID</th>
										<th>Image</th>
										<th>Name</th>
										<th>Description</th>
										<th>Price</th>
										<th>Edit</th>
										<th>Delete</th>
										<th>Confirm Delete</th>
									</tr>
								</thead>
								<tbody id="product_tbody">
									<?php foreach ($products as $item) : ?>
										<tr>
											<td><?= $item->id; ?></td>
											<td>
												<img src="<?= base_url('images/' . $item->image); ?>" height="50px" width="50px" alt="Product Image">
											</td>
											<td><?= $item->name; ?></td>
											<td><?= $item->description; ?></td>
											<td><?= $item->price; ?></td>
											<td width="5%" class="text-center">
												<a href="<?= base_url('products/edit/' . $item->id); ?>" class="btn btn-info">Edit</a>
											</td>
											<td width="7%" class="text-center">
												<a href="<?= base_url('products/delete/' . $item->id); ?>" class="btn btn-danger">Delete</a>
											</td>
											<td width="16%" class="text-center">
												<button type="button" class="btn btn-danger prod_delete" value="<?= $item->id; ?>">Confirm Delete</button>
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
	</div>
