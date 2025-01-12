@extends('master.back')

@section('content')
	<!-- Start of Main Content -->
	<div class="container-fluid">
		<!-- Page Heading -->
		<div class="card mb-4">
			<div class="card-body">
				<div class="d-sm-flex align-items-center justify-content-start">
					<h3 class="mb-0 bc-title mr-3"><b>{{ __('Categories') }}</b></h3>

					<a class="btn btn-primary btn-sm mr-3" href="{{ route('back.category.create') }}"><i class="fas fa-plus"></i> {{ __('Add New Category') }}</a>

					<a class="btn btn-primary btn-sm mr-3" href="{{ route('back.subcategory.create') }}"><i class="fas fa-plus"></i> {{ __('Add New Sub-Category') }}</a>

					<a class="btn btn-primary btn-sm mr-3" href="{{ route('back.childcategory.create') }}"><i class="fas fa-plus"></i> {{ __('Add New Child Category') }}</a>
				</div>
			</div>
		</div>

		{{-- Create Table Btn --}}

		<!-- DataTales -->
		<div class="card shadow mb-4">
			<div class="card-body">
				<div class="orderBtn">
					<div class="row mb-4 justify-content-center">
					  <div class="col-lg-12 text-center">
							<a href="{{ route('back.subcategory.index') }}" class="btn btn-success py-1 mr-2">{{ __('Sub Categories') }}</a>
			
							<a href="{{ route('back.childcategory.index') }}" class="btn btn-success py-1 mr-2">{{ __('Child Categories') }}</a>
					  </div>
					</div>
				</div>

				@include('alerts.alerts')

				<div class="gd-responsive-table">
					<table class="table table-bordered table-striped" id="admin-table" width="100%" cellspacing="0">
						<thead>
							<tr>
								<th>{{ __('Image') }}</th>
								<th>{{ __('Name') }}</th>
								<th>{{ __('Status') }}</th>
								<th>{{ __('Actions') }}</th>
							</tr>
						</thead>

						<tbody>
							@include('back.category.table', compact('datas'))
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- End of Main Content -->

	{{-- DELETE MODAL --}}
	<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="confirm-deleteModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">{{ __('Confirm Delete?') }}</h5>

					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>

				<!-- Modal Body -->
				<div class="modal-body">
					{{ __('You are going to delete this category. All contents related with this category will be lost.') }} {{ __('Do you want to delete it?') }}
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">{{ __('Cancel') }}</button>

					<form action="" class="d-inline btn-ok" method="POST">
						@csrf
						@method('DELETE')

						<button type="submit" class="btn btn-danger">{{ __('Delete') }}</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	{{-- DELETE MODAL ENDS --}}
@endsection