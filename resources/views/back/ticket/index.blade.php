@extends('master.back')

@section('content')
    <!-- Start of Main Content -->
    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="card mb-4">
            <div class="card-body">
                <div class="d-sm-flex align-items-center justify-content-between">
                    <h3 class="mb-0 bc-title"><b>{{ __('Manage Tickets') }}</b></h3>

                    <a class="btn btn-primary btn-sm" href="{{route('back.ticket.create')}}"><i class="fas fa-plus"></i> {{ __('Add') }}</a>
                </div>
            </div>
        </div>

        <input type="hidden" id="tickets_url" value="{{ route('back.ticket.index') }}">

        <!-- DataTales -->
        <div class="card shadow mb-4">
            <div class="card-body">
                @include('alerts.alerts')

                <div class="form-check">
                    <h4 class="mb-2"><b>{{ __('Filter by type :') }}</b></h4><br>

                    <label class="form-radio-label mx-3">
                        <input class="form-radio-input tickets_sort" type="radio" name="optionsRadios" value="" {{ request()->input('type') == '' ? 'checked' : '' }}>
                        
                        <span class="form-radio-sign">{{ __('All Tickets') }}</span>
                    </label>

                    <label class="form-radio-label mx-3">
                        <input class="form-radio-input tickets_sort" type="radio" name="optionsRadios" value="Pending" {{ request()->input('type') == 'Pending' ? 'checked' : '' }}>

                        <span class="form-radio-sign">{{ __('Pending Tickets') }}</span>
                    </label>

                    <label class="form-radio-label mx-3">
                        <input class="form-radio-input tickets_sort" type="radio" name="optionsRadios" value="Open" {{ request()->input('type') == 'Open' ? 'checked' : '' }}>

                        <span class="form-radio-sign">{{ __('Open Tickets') }}</span>
                    </label>

                    <label class="form-radio-label mx-3">
                        <input class="form-radio-input tickets_sort" type="radio" name="optionsRadios" value="Closed" {{ request()->input('type') == 'Closed' ? 'checked' : '' }}>

                        <span class="form-radio-sign ">{{ __('Closed Tickets') }}</span>
                    </label>
                </div>

                <br>

                <div class="gd-responsive-table">
                    <table class="table table-bordered table-striped" id="admin-table" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th width="15%">{{ __('User Name') }}</th>
                                <th width="10%">{{ __('Status') }}</th>
                                <th width="15%">{{ __('Last Reply') }}</th>
                                <th width="15%">{{ __('Actions') }}</th>
                            </tr>
                        </thead>

                        <tbody id="append">
                            @include('back.ticket.table', compact('datas'))
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
                    {{ __('You are going to delete this Ticket. All contents related with this ticket will be lost.') }} {{ __('Do you want to delete it?') }}
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
    <script src="https://js.pusher.com/8.2.0/pusher.min.js"></script>
    <script>
        // Enable pusher logging - don't include this in production
        Pusher.logToConsole = false;

        var pusher = new Pusher('84c6f7c5bccf17c754e9', {
            cluster: 'ap1',
            encrypted: true
        });

        var channel = pusher.subscribe('ecommerce-ticket');
        
        channel.bind('ticket-event', function(data) {
            // alert(JSON.stringify(data));

            let id                  = data.id;
            let subject             = data.subject;
            let message             = data.message;
            let status              = data.status;
            let first_name          = data.user.first_name;
            let created_at          = data.lastMessage.created_at;
            // let createdAtHumanized  = new Date(createdAt).toLocaleTimeString([], {
            //     hour: '2-digit',
            //     minute: '2-digit'
            // });
            let createdAt = new Date(data.lastMessage.created_at);
            let dateFormatter = new Intl.DateTimeFormat('en-US', {
                day: '2-digit',
                month: 'short',
                year: 'numeric'
            });
            let timeFormatter = new Intl.DateTimeFormat('en-US', {
                hour: '2-digit',
                minute: '2-digit',
                hour12: true
            });

            let formattedDate = dateFormatter.format(createdAt);
            let formattedTime = timeFormatter.format(createdAt);

            let formattedDateTime = `${formattedDate} at ${formattedTime}`;

            let messageHtml = `<tr>
                                    <td>${first_name}</td>
                                    <td>
                                        <span class="badge badge-primary">${status}</span>
                                    </td>
                                    <td>${created_at ? formattedDateTime : 'No Reply'}</td>
                                    <td>
                                        <div class="action-list">
                                            <a class="btn btn-secondary btn-sm" href="/admin/ticket/edit/${id}">
                                                <i class="fas fa-eye"></i>
                                            </a>

                                            <a class="btn btn-danger btn-sm" data-toggle="modal" data-target="#confirm-delete" href="javascript:;" data-href="/admin/ticket/destroy/${id}">
                                                <i class="fas fa-trash-alt"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>`;

            // Append message
            document.getElementById('append').insertAdjacentHTML('beforeend', messageHtml);
        });
    </script>
@endsection