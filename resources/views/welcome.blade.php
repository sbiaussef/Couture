@extends('Master.layout')

@section('content')
        @include('includes.head')
        @include('includes.sideBar')
        @include('home.slider')
        <div class="page-content">
                @include('home.collections')
                @include('home.project')
                @include('home.products')
                @include('home.about')
                @include('home.services')
                @include('home.contact')
                @include('includes.footer')
        </div>
@endsection