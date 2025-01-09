@extends('master.front')

@section('title')
    {{ __('Dashboard') }}
@endsection

@section('content')

    <!-- Page Title-->
    <div class="page-title">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumbs">
                        <li><a href="{{__('front.index')}}">{{__('Home')}}</a> </li>
                        <li class="separator"></li>
                        <li>{{__('Tickets')}} </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Page Content-->
    <div class="container padding-bottom-3x mb-1">
        <div class="row">
            @include('includes.user_sitebar')

            <div class="col-lg-8">
                <div class="padding-top-2x mt-2 hidden-lg-up"></div>

                <div class="mb-3">
                    <div class="card">
                        <div class="card-body d-flex flex-row justify-content-between align-items-center">
                            <h5 class="mb-0">{{ __('New Ticket') }}</h5>

                            <a href="{{ route('user.ticket') }}" class="btn btn-primary btn-sm m-0"><span>{{ __('Back') }}</span></a>
                        </div>
                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <form action="{{ route('user.ticket.store') }}" method="post" enctype="multipart/form-data" class="contact-form">
                            @csrf

                            <div class="row">
                                <div class="form-group col-lg-12">
                                    <label for="website">{{ __('Subject') }} *</label>

                                    <input type="text" class="form-control rounded-0" id="subject" name="subject" value="{{ old('subject') }}" placeholder="{{ __('Subject') }}">

                                    @error('subject')
                                        <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>

                                <div class="col-12 form-group">
                                    <label for="inputMessage">{{ __('Message') }} *</label>

                                    <textarea name="message" class="form-control rounded-0" rows="6"></textarea>

                                    @error('message')
                                        <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>

                            <div class="row justify-content-between">
                                <div class="form-group col-md-12">
                                    <label for="inputAttachments" class="font-weight-bold">{{ __('Attachment') }}</label>

                                    <div class="custom-file">
                                        <input type="file" name="file" id="customFile" class="custom-file-input form-control rounded-0">

                                        {{-- <label class="custom-file-label" for="customFile">{{ __('Choose file') }}</label> --}}

                                        @error('file')
                                            <p class="text-danger">{{ $message }}</p>
                                        @enderror
                                    </div>

                                    <div id="fileUploadsContainer"></div>

                                    <p class="my-2 ticket-attachments-message text-muted">{{ __('Allowed File Extension: .zip') }}</p>
                                </div>
                            </div>

                            <div class="d-flex justify-content-between mt-3">
                                <button class="btn btn-primary btn-sm" type="submit"><span>{{ __('Submit') }}</span></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('frontScript')
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

            let senderId    = data.sender_id;
            let message     = data.message;
            let senderName  = data.admin.name;
            let senderImage = data.admin.image;
            let messageTime = new Date(data.created_at).toLocaleTimeString([], {
                hour: '2-digit',
                minute: '2-digit'
            });

            // Create message HTML with proper asset URL
            let messageHtml = `
                <div class="chat-message receiver"> <!-- Left alignment for received messages -->
                    <div class="message-avatar">
                        <img src="${senderImage}" class="rounded-circle avatar" alt="${senderName} Avatar">
                    </div>
                    <div class="message-content">
                        <p><strong>${senderName}:</strong> ${message}</p>
                        <div class="timestamp">${messageTime}</div>
                    </div>
                </div>`;

            // Append message to chat container
            document.getElementById('chatMessageContainer').insertAdjacentHTML('beforeend', messageHtml);
        });
    </script>
@endpush