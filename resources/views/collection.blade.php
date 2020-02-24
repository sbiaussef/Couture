@if ($collections)
    @foreach ($collections as $collection)
            <h1>{{$collection->name}}</h1>
            @foreach ($collection->products as $product)
            <p>{{$product->productName}}</p>
            @endforeach
    @endforeach   
@endif