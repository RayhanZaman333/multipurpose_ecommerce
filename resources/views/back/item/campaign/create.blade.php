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
                    <h3 class="mb-0 bc-title"><b>{{ __('Campaign Offer') }}</b></h3>
                </div>
            </div>
        </div>

        <!-- DataTales -->
        <div class="card shadow mb-4">
            <div class="card-body">
                @include('alerts.alerts')

                <form action="{{ route('back.campaign.store') }}" method="POST">
                    @csrf

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group product-serch">
                                <label for="campaign_title">{{ __('Campaign Title') }} <span class="text-danger">*</span></label>

                                <input type="text" class="form-control" name="campaign_title" id="campaign_title" value="{{ old('campaign_title') }}" placeholder="{{ __('Campaign Title') }}" required>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group product-serch">
                                <label for="campaign_start_date">{{ __('Campaign Start Date Time') }} <span class="text-danger">*</span></label>

                                <input type="text" class="form-control datepicker" name="campaign_start_date" id="campaign_start_date" value="{{ old('campaign_start_date') }}" placeholder="{{ __('Enter Date') }}" required>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group product-serch">
                                <label for="campaign_end_date">{{ __('Campaign Last Date Time') }} <span class="text-danger">*</span></label>

                                <input type="text" class="form-control datepicker" name="campaign_end_date" id="campaign_end_date" value="{{ old('campaign_end_date') }}" placeholder="{{ __('Enter Date') }}" required>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group product-serch">
                                <label for="campaign_status">{{ __('Status') }} <span class="text-danger">*</span></label>

                                <select name="campaign_status" class="form-control" id="campaign_status" required>
                                    <option value="">{{ __('Select Status') }}</option>

                                    <option value="1">{{ __('Publish') }}</option>
                                    <option value="0">{{ __('Unpublish') }}</option>
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

    <script>
        $('.datepicker').datetimepicker({
            format: 'MM/DD/YYYY',
        });
    </script>
@endsection