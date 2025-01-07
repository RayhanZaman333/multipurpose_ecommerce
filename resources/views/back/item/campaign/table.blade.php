@foreach($datas as $data)
    <tr>
        <td>{{ $data->campaign_title }}</td>

        <td>{{ date('d M, Y', strtotime($data->campaign_start_date)) }} at {{ date('h:i a', strtotime($data->campaign_start_date)) }}</td>
        <td>{{ date('d M, Y', strtotime($data->campaign_end_date)) }} at {{ date('h:i a', strtotime($data->campaign_end_date)) }}</td>

        <td>
            <div class="dropdown">
                <button class="btn btn-{{ $data->campaign_status == 1 ? 'success' : 'danger'  }} btn-sm  dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    {{  $data->campaign_status == 1 ? __('Publish') : __('Unpublish')  }}
                </button>

                <div class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="{{ route('back.campaign.changeStatus', [$data->id, 1]) }}">{{ __('Publish') }}</a>
                    <a class="dropdown-item" href="{{ route('back.campaign.changeStatus', [$data->id, 0]) }}">{{ __('Unpublish') }}</a>
                </div>
            </div>
        </td>

        <td>
            <div class="action-list">
                <a class="btn btn-secondary btn-sm" href="{{ route('back.campaign.edit', $data->id) }}">
                    <i class="fas fa-edit"></i>
                </a>

                <a class="btn btn-danger btn-sm" data-toggle="modal" data-target="#confirm-delete" href="javascript:;" data-href="{{ route('back.campaign.destroy', $data->id) }}">
                    <i class="fas fa-trash-alt"></i>
                </a>
            </div>
        </td>
    </tr>
@endforeach