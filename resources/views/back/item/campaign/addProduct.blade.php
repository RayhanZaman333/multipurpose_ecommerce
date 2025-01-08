@extends('master.back')

@section('styles')
    <link rel="stylesheet" href="{{asset('assets/back/css/select2.css')}}">
    <link rel="stylesheet" href="{{asset('assets/back/css/datepicker.css')}}">
@endsection

@section('content')
    <!-- Start of Main Content -->
    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="card mb-4">
            <div class="card-body">
                <div class="d-sm-flex align-items-center justify-content-between">
                    <h3 class="mb-0 bc-title"><b>{{ __('Add Product for Campaign') }}</b></h3>
                </div>
            </div>
        </div>

        <!-- DataTales -->
        <div class="card shadow">
            <div class="card-body">
                @include('alerts.alerts')

                <div class="card shadow mb-4">
                    <div class="card-header">
                        <h4 class="card-title">{{ __('Add Product for Campaign') }}</h4>

                        <div class="row">
                            <form action="{{ route('back.campaign.itemStore') }}" method="POST">
                                @csrf

                                <input type="hidden" name="campaign_id" id="campaign_id" value="{{ $data->id }}">

                                <div class="col-md-10">
                                    <div class="form-group ">
                                        <select id="basic" name="item_id[]" class="form-control" multiple>
                                            <option value="" disabled>{{ __('Select Product') }}</option>

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

                    @if ($items->count() > 0)
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
                                    @foreach ($items as $product)
                                        <tr>
                                            <td><img src="{{ asset('storage/images/'.($product->item->photo ?? '')) }}" alt=""></td>

                                            <td>{{ $product->item->name ?? '' }}</td>

                                            <td> {{ PriceHelper::adminCurrencyPrice($product->item->discount_price) ?? '' }}</td>

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
                                </tbody>
                            </table>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <!-- End of Main Content -->
@endsection

@section('scripts')
    <script type="" src="{{ asset('assets/back/js/select2.js') }}"></script>

    <script>
        $('#basic').select2({
			theme: "bootstrap"
		});
    </script>
@endsection