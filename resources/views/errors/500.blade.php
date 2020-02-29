@extends('Master.layout')

@section('content')

<div class="error-page">
    <div class="logo">
        <a href="/"><img src="{{asset('img/logo.png')}}" alt="say couture"></a>
    </div>
    <div class="fof">
        <h1>500</h1>
        
    </div>      
</div>
<p class="text-center p-fof">Oops ,Sorry something went wrong with the server please try again ☹</p>
@endsection