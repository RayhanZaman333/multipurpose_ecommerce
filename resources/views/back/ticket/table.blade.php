@foreach($datas as $data)
    @php
        $lastMessage = App\Models\Message::where('ticket_id', $data->id)->latest()->first();
    @endphp

    <tr>
        <td>{{ $data->user->first_name ?? '' }}</td>

        <td>
            <span class="badge badge-primary">{{ $data->status }}</span>
        </td>

        @if ($lastMessage)
            {{-- <td>{{ \Carbon\Carbon::parse($lastMessage->created_at ?? '')->diffForHumans() }}</td> --}}
            <td>{{ date('M d, Y', strtotime($lastMessage->created_at ?? '')) }} at {{ date('h:i A', strtotime($lastMessage->created_at ?? '')) }}</td>
        @else
            <td> {{ __('No Reply') }}</td>
        @endif

        <td>
            <div class="action-list">
                <a class="btn btn-secondary btn-sm" href="{{ route('back.ticket.edit', $data->id) }}">
                    <i class="fas fa-eye"></i>
                </a>

                <a class="btn btn-danger btn-sm" data-toggle="modal" data-target="#confirm-delete" href="javascript:;" data-href="{{ route('back.ticket.destroy', $data->id) }}">
                    <i class="fas fa-trash-alt"></i>
                </a>
            </div>
        </td>
    </tr>
@endforeach