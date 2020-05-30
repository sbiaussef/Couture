@extends('Master.layout')

@section('content')
@include('includes.background')
<div class="container product-content">
    @if ( $collections->isNotEmpty())
        @foreach ($collections as $collection)
         <h1 class="text-center">{{$collection->name}}</h1>
    <div class="row">
        @if ($collection->products->isNotEmpty())
                    
        @foreach ($collection->products as $product)
        <div class="col-sm-6 col-md-4 col-lg-3 mb-4 py-5 single-product">
            <div class="card h-100 ">
                                 <div class="text-center">
                        <div class="hovereffect">
                            <div class="text-center">
                                <img class="card-img-top" src="/storage/{{collect((json_decode($product->pictures)))->first()}}" alt="">
                            </div>
                            <div class="overlay">
                               <h2>{{$product->productName}}</h2>
                            <a class="info" href="{{url('product/'.$product->slug)}}" target="_blank">More Details</a>
                               {{-- <p class="card-text text-center product-desc">{{$product->productDescription}}</p> --}}
                            </div>
                        </div>
                 </div>

                <div class="card-body">
                    
                </div>
            </div>
        </div>
        @endforeach
        @else
        <h3 class="error-product">this is no product yet</h3>
        @endif
        @endforeach
    </div>   
    @else
    <h3 class="error-product">this no collection with this name</h3>

    @endif

    <!-- /.row -->
</div>
@include('includes.footer')
@endsection