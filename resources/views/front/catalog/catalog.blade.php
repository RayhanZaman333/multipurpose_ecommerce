<!-- Shop Toolbar-->
@php
    function renderStarRating($rating,$maxRating=5) {
        $fullStar = "<i class = 'far fa-star filled'></i>";
        $halfStar = "<i class = 'far fa-star-half filled'></i>";
        $emptyStar = "<i class = 'far fa-star'></i>";
        $rating = $rating <= $maxRating?$rating:$maxRating;

        $fullStarCount = (int)$rating;
        $halfStarCount = ceil($rating)-$fullStarCount;
        $emptyStarCount = $maxRating -$fullStarCount-$halfStarCount;

        $html = str_repeat($fullStar,$fullStarCount);
        $html .= str_repeat($halfStar,$halfStarCount);
        $html .= str_repeat($emptyStar,$emptyStarCount);
        $html = $html;

        return $html;
    }
@endphp

<div class="row g-3" id="main_div">
    @if($items->count() > 0)
        @if ($checkType != 'list')
            @foreach ($items as $item)
            <div class="col-xxl-3 col-md-4 col-6">
                <div class="product-card ">
                    @if ($item->is_stock())
                        <div class="product-badge
                            @if($item->is_type == 'feature')
                                bg-warning
                            @elseif($item->is_type == 'new')
                                bg-danger
                            @elseif($item->is_type == 'top')
                                bg-info
                            @elseif($item->is_type == 'best')
                                bg-dark
                            @elseif($item->is_type == 'flash_deal')
                                bg-success
                            @endif
                            "> {{  $item->is_type != 'undefine' ?  (str_replace('_',' ',__("$item->is_type"))) : ''   }}
                        </div>
                    @else
                        <div class="product-badge bg-secondary border-default text-body">{{ __('out of stock') }}</div>
                    @endif

                    @if ($item->is_price_show == 1)
                        @if($item->previous_price && $item->previous_price !=0)
                            <div class="product-badge product-badge2 bg-info"> -{{ PriceHelper::DiscountPercentage($item) }}</div>
                        @endif
                    @endif

                    <div class="product-thumb">
                        <img class="lazy" data-src="{{ asset('storage/images/'.$item->photo) }}" alt="Product" style="height: 228px; width: 228px;">

                        <div class="product-button-group">
                            {{-- <a class="product-button wishlist_store" href="{{ route('user.wishlist.store', $item->id) }}" title="{{ __('Wishlist') }}"><i class="icon-heart"></i></a>

                            <a class="product-button product_compare" href="javascript:;" data-target="{{ route('fornt.compare.product', $item->id) }}" title="{{ __('Compare') }}"><i class="icon-repeat"></i></a> --}}

                            @include('includes.item_footer', ['sitem' => $item])
                        </div>
                    </div>

                    <div class="product-card-body">
                        <div class="product-category">
                            <a href="{{ route('front.catalog').'?category='.$item->category->slug }}">{{ $item->category->name }}</a>
                        </div>

                        <h3 class="product-title">
                            <a href="{{ route('front.product', $item->slug) }}">
                                {{ Str::limit($item->name, 38) }}
                            </a>
                        </h3>

                        <div class="rating-stars">
                            {!! renderStarRating($item->reviews->avg('rating')) !!}
                        </div>

                        <h4 class="product-price">
                            @if ($item->is_price_show == 1)
                                @if ($item->previous_price != 0)
                                    <del>{{PriceHelper::setPreviousPrice($item->previous_price)}}</del>
                                @endif

                                {{ PriceHelper::grandCurrencyPrice($item) }}
                            {{-- @else
                                <div class="pb-2"><a class="btn btn-primary btn-block" href="#" data-bs-toggle="modal" data-bs-target="#priceRequest"><span>{{ __('Request for Price') }}</span></a></div>

                                <div class="modal fade" id="priceRequest" tabindex="-1" aria-labelledby="priceRequestLabel" aria-modal="true">
                                    <div class="modal-dialog modal-md">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                            <h4 class="modal-title">{{__('Request for Price')}}</h4>

                                            <button class="close modal_close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            </div>

                                            <form action="{{ route('front.priceQuote') }}" method="post" id="priceRequest" tabindex="-1">
                                                <div class="modal-body">
                                                    @csrf

                                                    <input type="hidden" name="item_id" value="{{ $item->id }}">

                                                    <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="form-group">
                                                        <label for="review-name">{{__('Your Name')}}</label>

                                                        <input class="form-control" type="text" id="price_name" name="price_name" value="{{ old('price_name') }}" placeholder="Enter Your Fullname" required>
                                                        </div>
                                                    </div>
                                                    </div>

                                                    <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="form-group">
                                                        <label for="review-email">{{__('Your Email')}}</label>

                                                        <input class="form-control" type="email" id="price_email" name="price_email" value="{{ old('price_email') }}" placeholder="Enter Your Email" required>
                                                        </div>
                                                    </div>
                                                    </div>

                                                    <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="form-group">
                                                        <label for="review-email">{{__('Your Mobile')}}</label>

                                                        <input class="form-control" type="text" id="price_mobile" name="price_mobile" value="{{ old('price_mobile') }}" placeholder="Enter Your Mobile Number" required>
                                                        </div>
                                                    </div>
                                                    </div>
                                                </div>

                                                <div class="modal-footer">
                                                    <button class="btn btn-primary" type="submit"><span>{{ __('Submit') }}</span></button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div> --}}
                            @endif
                        </h4>
                    </div>
                </div>
            </div>
            @endforeach
        @else
            @foreach ($items as $item)
                <div class="col-lg-12">
                    <div class="product-card product-list">
                        <div class="product-thumb" >
                        @if ($item->is_stock())
                            <div class="product-badge
                                @if($item->is_type == 'feature')
                                    bg-warning
                                @elseif($item->is_type == 'new')
                                    bg-danger
                                @elseif($item->is_type == 'top')
                                    bg-info
                                @elseif($item->is_type == 'best')
                                    bg-dark
                                @elseif($item->is_type == 'flash_deal')
                                    bg-success
                                @endif
                                ">{{  $item->is_type != 'undefine' ?  ucfirst(str_replace('_',' ',$item->is_type)) : ''   }}
                            </div>
                            @else
                                <div class="product-badge bg-secondary border-default text-body">{{ __('out of stock') }}</div>
                            @endif

                            @if ($item->is_price_show == 1)
                                @if($item->previous_price && $item->previous_price != 0)
                                    <div class="product-badge product-badge2 bg-info"> -{{ PriceHelper::DiscountPercentage($item) }}</div>
                                @endif
                            @endif

                            <img class="lazy" data-src="{{ asset('storage/images/'.$item->photo) }}" alt="Product">

                            <div class="product-button-group">
                                {{-- <a class="product-button wishlist_store" href="{{ route('user.wishlist.store', $item->id) }}" title="{{ __('Wishlist') }}"><i class="icon-heart"></i></a>

                                <a data-target="{{ route('fornt.compare.product', $item->id) }}" class="product-button product_compare" href="javascript:;" title="{{ __('Compare') }}"><i class="icon-repeat"></i></a> --}}

                                @include('includes.item_footer', ['sitem' => $item])
                            </div>
                        </div>

                        <div class="product-card-inner">
                            <div class="product-card-body">
                                <div class="product-category"><a href="{{ route('front.catalog').'?category='.$item->category->slug }}">{{ $item->category->name }}</a></div>

                                <h3 class="product-title">
                                        <a href="{{ route('front.product', $item->slug) }}">
                                        {{ Str::limit($item->name, 52) }}
                                    </a>
                                </h3>

                                <div class="rating-stars">
                                    {!! renderStarRating($item->reviews->avg('rating')) !!}
                                </div>

                                <h4 class="product-price">
                                    @if ($item->is_price_show == 1)
                                        @if ($item->previous_price != 0)
                                            <del>{{ PriceHelper::setPreviousPrice($item->previous_price) }}</del>
                                        @endif

                                        {{ PriceHelper::grandCurrencyPrice($item)}}
                                    {{-- @else
                                        <div class="pb-2"><a class="btn btn-primary btn-block" href="#" data-bs-toggle="modal" data-bs-target="#priceRequest"><span>{{ __('Request for Price') }}</span></a></div>

                                        <div class="modal fade" id="priceRequest" tabindex="-1" aria-labelledby="priceRequestLabel" aria-modal="true">
                                            <div class="modal-dialog modal-md">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                    <h4 class="modal-title">{{__('Request for Price')}}</h4>

                                                    <button class="close modal_close" type="button" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    </div>

                                                    <form action="{{ route('front.priceQuote') }}" method="post" id="priceRequest" tabindex="-1">
                                                    <div class="modal-body">
                                                        @csrf

                                                        <input type="hidden" name="item_id" value="{{ $item->id }}">

                                                        <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="form-group">
                                                            <label for="review-name">{{__('Your Name')}}</label>

                                                            <input class="form-control" type="text" id="price_name" name="price_name" value="{{ old('price_name') }}" placeholder="Enter Your Fullname" required>
                                                            </div>
                                                        </div>
                                                        </div>

                                                        <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="form-group">
                                                            <label for="review-email">{{__('Your Email')}}</label>

                                                            <input class="form-control" type="email" id="price_email" name="price_email" value="{{ old('price_email') }}" placeholder="Enter Your Email" required>
                                                            </div>
                                                        </div>
                                                        </div>

                                                        <div class="row">
                                                        <div class="col-sm-12">
                                                            <div class="form-group">
                                                            <label for="review-email">{{__('Your Mobile')}}</label>

                                                            <input class="form-control" type="text" id="price_mobile" name="price_mobile" value="{{ old('price_mobile') }}" placeholder="Enter Your Mobile Number" required>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>

                                                    <div class="modal-footer">
                                                        <button class="btn btn-primary" type="submit"><span>{{ __('Submit') }}</span></button>
                                                    </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div> --}}
                                    @endif
                                </h4>

                                <p class="text-sm sort_details_show  text-muted hidden-xs-down my-1">
                                    {{ Str::limit(strip_tags($item->sort_details), 100) }}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        @endif
    @else
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body text-center">
                    <h4 class="h4 mb-0">{{ __('No Product Found') }}</h4>
                </div>
            </div>
        </div>
    @endif
</div>

<!-- Pagination-->
<div class="row mt-15" id="item_pagination">
    <div class="col-lg-12 text-center">
        {{ $items->links()}}
    </div>
</div>

<script type="text/javascript" src="{{ asset('assets/front/js/catalog.js') }}"></script>