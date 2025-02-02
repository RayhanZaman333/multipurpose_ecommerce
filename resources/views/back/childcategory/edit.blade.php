@extends('master.back')

@section('content')
	<div class="container-fluid">
		<!-- Page Heading -->
		<div class="card mb-4">
			<div class="card-body">
				<div class="d-sm-flex align-items-center justify-content-between">
					<h3 class="mb-0 bc-title"><b>{{ __('Edit Category') }}</b> </h3>

					<a class="btn btn-primary btn-sm" href="{{ route('back.childcategory.index') }}"><i class="fas fa-chevron-left"></i> {{ __('Back') }}</a>
				</div>
			</div>
		</div>

		<!-- Form -->
		<div class="row">
			<div class="col-xl-12 col-lg-12 col-md-12">
				<div class="card o-hidden border-0 shadow-lg">
					<div class="card-body ">
						<!-- Nested Row within Card Body -->
						<div class="row justify-content-center">
							<div class="col-lg-12">
									<form class="admin-form" action="{{ route('back.childcategory.update', $childcategory->id) }}" method="POST" enctype="multipart/form-data">
										@csrf
										@method('PUT')

										@include('alerts.alerts')

										<div class="form-group">
											<label for="name">{{ __('Name') }} <span class="text-danger">*</span></label>

											<input type="text" name="name" class="form-control item-name" id="name"
												placeholder="{{ __('Enter Name') }}" value="{{ $childcategory->name}}" required>
										</div>

										<div class="form-group">
											<label for="category_id">{{ __('Select Category') }} <span class="text-danger">*</span></label>

											<select name="category_id" id="category_id" class="form-control" required>
												<option value="" disabled>{{ __('Select One') }}</option>

												@foreach(DB::table('categories')->whereStatus(1)->get() as $cat)
													<option value="{{ $cat->id }}" {{ $childcategory->category_id == $cat->id ? 'selected' :'' }} >{{ $cat->name }}</option>
												@endforeach
											</select>
										</div>

										<div class="form-group">
											<label for="subcategory_id">{{ __('Select Subcategory') }} <span class="text-danger">*</span></label>

											<select name="subcategory_id" id="subcategory_id" class="form-control" required>
												<option value="" disabled>{{ __('Select One') }}</option>

												@foreach(DB::table('subcategories')->where('category_id', $childcategory->category_id)->whereStatus(1)->get() as $subcat)
													<option value="{{ $subcat->id }}" {{ $subcat->id == $childcategory->subcategory_id ? 'selected' : '' }}>{{ $subcat->name }}</option>
												@endforeach
											</select>
										</div>

										<div class="form-group">
											<label for="slug">{{ __('Slug') }} *</label>

											<input type="text" name="slug" class="form-control" id="slug" placeholder="{{ __('Enter Slug') }}" value="{{ $childcategory->slug }}" required>
										</div>

										<div class="form-group">
											<button type="submit" class="btn btn-secondary ">{{ __('Update') }}</button>
										</div>
									<div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
@endsection