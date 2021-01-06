@extends('Master.layout')

@section('style')

<link rel="stylesheet" href="/css/assets/owl.carousel.min.css">
<link rel="stylesheet" href="/css/assets/owl.theme.default.min.css">

<link rel="stylesheet" href="/css/single.css">


@endsection
@section('content')
@include('includes.background')
<div class="container">
    <div class="card">
        <div class="container-fliud">
            <div class="wrapper row">
                @if ($products->isNotEmpty())
                @foreach ($products as $product)
                    <div class="preview col-md-6">
                        <div class="preview-pic tab-content">
                            @if (collect((json_decode($product->pictures)))->isNotEmpty())
                            @foreach (collect((json_decode($product->pictures))) as $url)
                            <div class="tab-pane {{$loop->first?'active':''}}" id="pic-{{ $loop->iteration }}">
                                <img src="/storage/{{$url}}" />
                            </div>
                            @endforeach
                        </div>

                        <div class=" owl-carousel">
                            {{-- <ul class="preview-thumbnail nav nav-tabs"> --}}
                                @foreach (collect((json_decode($product->pictures))) as $url)
                                {{-- <li class="{{$loop->first==$url?'active':''}}"><a data-target="#pic-{{ $loop->iteration }}" data-toggle="tab"><img
                                            src="/storage/{{$url}}" /></a></li> --}}
                                    <div class="preview-thumbnail nav nav-tabs col-md-3 {{$loop->first==$url?'active':''}}">
                                        <a data-target="#pic-{{ $loop->iteration }}" data-toggle="tab">
                                            <img class="secondary-img"  src="/storage/{{$url}}" />
                                        </a>
                                    </div>
                                @endforeach
                            {{-- </ul> --}}
                        </div>
                            @else
                            <h1 class="error-product">this is No Pictures for this Product</h1> 
                            @endif
                    </div>
                    <div class="details col-md-6">
                        <h3 class="product-title">{{ $product->productName }}</h3>
                        <div class="rating">
                            <div class="stars">
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                            <span class="review-no">41 reviews</span>
                        </div>
                        <p class="product-description">{{ $product->productDescription }}.</p>
                        {{-- <h4 class="price">current price: <span>$180</span></h4>
                        <p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
                        <h5 class="sizes">sizes:
                            <span class="size" data-toggle="tooltip" title="small">s</span>
                            <span class="size" data-toggle="tooltip" title="medium">m</span>
                            <span class="size" data-toggle="tooltip" title="large">l</span>
                            <span class="size" data-toggle="tooltip" title="xtra large">xl</span>
                        </h5>
                        <h5 class="colors">colors:
                            <span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
                            <span class="color green"></span>
                            <span class="color blue"></span>
                        </h5> --}}
                        <div class="action">
                            <div class="accent-button button">
                                <a href="{{url('product/'.$product->slug.'/command')}}">take it now</a>
                            </div>
                        </div>
                    </div>         
                @endforeach

                    
                @else
                    <h1 class="error-product">this is No Product With this Name</h1> 
                    
                @endif

            </div>
        </div>
    </div>
</div>
@include('includes.footer')
@endsection

@section('script')
<script src="/js/owl.carousel.min.js"></script>
        
<script>
    $(document).ready(function(){
      $(".owl-carousel").owlCarousel();
    });
</script>
@endsection