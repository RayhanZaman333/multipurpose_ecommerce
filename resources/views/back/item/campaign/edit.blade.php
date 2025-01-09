@extends('master.back')

@section('styles')
    <link rel="stylesheet" href="{{ asset('assets/back/css/select2.css') }}">

    <link rel="stylesheet" href="{{ asset('assets/back/css/datepicker.css') }}">
@endsection

@section('content')
    <!-- Start of Main Content -->
    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="card mb-4">
            <div class="card-body">
                <div class="d-sm-flex align-items-center justify-content-between">
                    <h3 class="mb-0 bc-title"><b>{{ __('Campaign Offer') }}</b></h3>
                </div>
            </div>
        </div>

        <!-- DataTales -->
        <div class="card shadow mb-4">
            <div class="card-body">
                @include('alerts.alerts')

                <form action="{{ route('back.campaign.update', Crypt::encryptString($data->id)) }}" method="POST">
                    @csrf
                    @method('put')

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group product-serch">
                                <label for="campaign_title">{{ __('Campaign Title') }} <span class="text-danger">*</span></label>

                                <input type="text" class="form-control" name="campaign_title" id="campaign_title" value="{{ $data->campaign_title }}" placeholder="{{ __('Campaign Title') }}" required>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group product-serch">
                                <label for="campaign_start_date">{{ __('Campaign Start Date Time') }} <span class="text-danger">*</span></label>

                                <input type="text" class="form-control datepicker" name="campaign_start_date" id="campaign_start_date" value="{{ $data->campaign_start_date }}" placeholder="{{ __('Enter Date') }}" required>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group product-serch">
                                <label for="campaign_end_date">{{ __('Campaign Last Date Time') }} <span class="text-danger">*</span></label>

                                <input type="text" class="form-control datepicker" name="campaign_end_date" id="campaign_end_date" value="{{ $data->campaign_end_date }}" placeholder="{{ __('Enter Date') }}" required>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group product-serch">
                                <label for="campaign_status">{{ __('Status') }} <span class="text-danger">*</span></label>

                                <select name="campaign_status" class="form-control" id="campaign_status" required>
                                    <option value="">{{ __('Select Status') }}</option>

                                    <option value="1" {{ $data->campaign_status == 1 ? 'selected' : '' }}>{{ __('Publish') }}</option>
                                    <option value="0" {{ $data->campaign_status == 0 ? 'selected' : '' }}>{{ __('Unpublish') }}</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">{{ __('Save') }}</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <div class="card shadow mb-4">
            <div class="card-header">
                <h4 class="card-title">{{ __('Product Added for Campaign') }}</h4>

                <div class="row">
                    <form action="{{ route('back.campaign.itemUpdate') }}" method="POST">
                        @csrf

                        <input type="hidden" name="campaign_id" id="campaign_id" value="{{ $data->id }}">

                        <div class="col-md-6">
                            <div class="form-group ">
                                <select id="basic" name="item_id" class="form-control" >
                                    <option value="" disabled selected>{{ __('Select Product') }}</option>

                                    @foreach ($datas as $item)
                                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                                    @endforeach
                                </select>

                                @error('item_id')
                                    <p class="text-danger">{{ $message }}</p>
                                @endif
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">{{ __('Add To Campaign') }}</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        
            <div class="card-body">
                <table class="table table-bordered table-striped" id="admin-table" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>{{ __('Image') }}</th>
                            <th width="40%">{{ __('Name') }}</th>
                            <th>{{ __('Price') }}</th>
                            <th>{{ __('Status') }}</th>
                            <th>{{ __('Show Home Page') }}</th>
                            <th>{{ __('Action') }}</th>
                        </tr>
                    </thead>

                    <tbody>
                        @if ($items->count() > 0)
                            @foreach ($items as $product)
                                <tr>
                                    <td><img src="{{ asset('storage/images/'.$product->item->photo) }}" alt=""></td>

                                    <td>{{ $product->item->name ?? '' }}</td>

                                    <td> {{ PriceHelper::adminCurrencyPrice($product->item->discount_price ?? '') }}</td>

                                    <td>
                                        <div class="dropdown">
                                            <button class="btn btn-{{ $product->status == 1 ? 'success' : 'danger'  }} btn-sm  dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                {{ $product->status == 1 ? __('Publish') : __('Unpublish') }}
                                            </button>

                                            <div class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="{{ route('back.campaign.status', [$product->id, 1, 'status']) }}">{{ __('Publish') }}</a>
                                                <a class="dropdown-item" href="{{ route('back.campaign.status', [$product->id, 0, 'status']) }}">{{ __('Unpublish') }}</a>
                                            </div>
                                        </div>
                                    </td>

                                    <td>
                                        <div class="dropdown">
                                            <button class="btn btn-{{ $product->is_feature == 1 ? 'success' : 'danger'  }} btn-sm  dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                {{ $product->is_feature == 1 ? __('Active') : __('Deactive') }}
                                            </button>

                                            <div class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="{{ route('back.campaign.status', [$product->id, 1, 'is_feature']) }}">{{ __('Active') }}</a>
                                                <a class="dropdown-item" href="{{ route('back.campaign.status', [$product->id, 0, 'is_feature']) }}">{{ __('Deactive') }}</a>
                                            </div>
                                        </div>
                                    </td>

                                    <td>
                                        <a class="btn btn-danger btn-sm" data-toggle="modal" data-target="#confirm-delete" href="javascript:;" data-href="{{ route('back.campaign.destroy', $product->id) }}">
                                            <i class="fas fa-trash-alt"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        @else
                            <p class="d-block text-center">
                                {{ __('No Product Found') }}
                            </p>
                        @endif
                    </tbody>
                </table>
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
                    {{ __('Are you sure want to delete this item form campaign?') }}
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

@section('scripts')
    <script type="" src="{{ asset('assets/back/js/select2.js') }}"></script>

    <script>
        $('#basic').select2({
			theme: "bootstrap"
		});
    </script>

    <script>
        $('.datepicker').datetimepicker({
            format: 'MM/DD/YYYY',
        });
    </script>
@endsection