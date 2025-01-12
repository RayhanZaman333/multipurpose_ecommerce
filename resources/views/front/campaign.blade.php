@extends('master.front')

@section('title')
    {{ __('Campaign') }}
@endsection

@section('meta')
    <meta name="keywords" content="{{ $setting->meta_keywords }}">
    <meta name="description" content="{{ $setting->meta_description }}">
@endsection

@section('content')
    <div class="page-title">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="breadcrumbs">
                        <li><a href="{{route('front.index')}}">{{ __('Home') }}</a></li>

                        <li class="separator"></li>

                        <li><a href="{{route('front.campaign')}}">{{ __('Campaign Products') }}</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Content-->

    @php
        if (!function_exists('renderStarRating')) {
            function renderStarRating($rating, $maxRating=5) {
                $fullStar = "<i class = 'far fa-star filled'></i>";
                $halfStar = "<i class = 'far fa-star-half filled'></i>";
                $emptyStar = "<i class = 'far fa-star'></i>";

                $rating = $rating <= $maxRating ? $rating : $maxRating;

                $fullStarCount = (int)$rating;
                $halfStarCount = ceil($rating)-$fullStarCount;
                $emptyStarCount = $maxRating -$fullStarCount-$halfStarCount;

                $html = str_repeat($fullStar, $fullStarCount);
                $html .= str_repeat($halfStar, $halfStarCount);
                $html .= str_repeat($emptyStar, $emptyStarCount);
                $html = $html;

                return $html;
            }
        }
    @endphp

    @if ($campaigns)
        @foreach ($campaigns as $campaign)
            @if (date('d-m-y') <= \Carbon\Carbon::parse($campaign->campaign_end_date)->format('d-m-y'))
                <div class="deal-of-day-section pb-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="section-title">
                                    <h2 class="h3">{{ $campaign->campaign_title }}</h2>

                                    <div class="right-area">
                                        <div class="countdown countdown-alt" data-date-time="{{ $campaign->campaign_end_date }}"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row g-3">
                            @php
                                $campaign_items = App\Models\CampaignItem::where('campaign_id', $campaign->id)->where('status', 1)->with('item')->get();
                            @endphp

                            @if (count($campaign_items) > 0)
                                @foreach ($campaign_items as $campaign_item)
                                    <div class="col-gd">
                                        <div class="product-card">
                                            <div class="product-thumb">
                                                @if ($campaign_item->item ? $campaign_item->item->is_stock() : '')
                                                    <div class="product-badge
                                                        @if (($campaign_item->item->is_type ?? '') == 'feature')
                                                            bg-warning
                                                        @elseif (($campaign_item->item->is_type ?? '') == 'new')
                                                            bg-primary
                                                        @elseif (($campaign_item->item->is_type ?? '') == 'top')
                                                            bg-info
                                                        @elseif (($campaign_item->item->is_type ?? '') == 'best')
                                                            bg-dark
                                                        @elseif (($campaign_item->item->is_type ?? '') == 'flash_deal')
                                                            bg-success
                                                        @endif
                                                    ">
                                                        {{ ucfirst(str_replace('_', ' ', ($campaign_item->item->is_type ?? ''))) }}
                                                    </div>
                                                @else
                                                    <div class="product-badge bg-secondary border-default text-body">{{__('out of stock')}}</div>
                                                @endif

                                                @if (($campaign_item->item->previous_price ?? '') && ($campaign_item->item->previous_price ?? '') != 0)
                                                    <div class="product-badge product-badge2 bg-info"> -{{ PriceHelper::DiscountPercentage($campaign_item->item) }}</div>
                                                @endif

                                                <img src="{{ asset('storage/images/'.$campaign_item->item->thumbnail) }}" alt="Product">

                                                <div class="product-button-group">
                                                    <a class="product-button wishlist_store" href="{{ route('user.wishlist.store', ($campaign_item->item->id ?? '')) }}" title="{{ __('Wishlist') }}"><i class="icon-heart"></i></a>

                                                    <a data-target="{{ route('fornt.compare.product', ($campaign_item->item->id ?? '')) }}" class="product-button product_compare" href="javascript:;" title="{{ __('Compare') }}"><i class="icon-repeat"></i></a>

                                                    @include('includes.item_footer', ['sitem' => $campaign_item->item])
                                                </div>
                                            </div>

                                            <div class="product-card-body">
                                                <div class="product-category"><a href="{{ route('front.catalog').'?category='.($campaign_item->item->category->slug ?? '') }}">{{ $campaign_item->item->category->name ?? '' }}</a></div>

                                                <h3 class="product-title">
                                                    <a href="{{ route('front.product', ($campaign_item->item->slug ?? '')) }}">{{ Str::limit(($campaign_item->item->name ?? ''), 35) }}</a>
                                                </h3>

                                                <div class="rating-stars">
                                                    {!! renderStarRating($campaign_item->item->reviews->avg('rating')) !!}
                                                </div>

                                                <h4 class="product-price">
                                                    @if ((($campaign_item->item->previous_price ?? '') ?? '') != 0)
                                                        <del>{{ PriceHelper::setPreviousPrice((($campaign_item->item->previous_price ?? 0) ?? '')) }}</del>
                                                    @endif

                                                    {{ PriceHelper::grandCurrencyPrice($campaign_item->item) }}
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            @endif
                        </div>
                    </div>
                </div>
            @endif
        @endforeach
    @endif
@endsection