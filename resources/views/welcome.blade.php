@extends('Master.layout')

@section('content')
        @include('includes.head')
        @include('includes.sideBar')
        @include('pages.slider')
        <div class="page-content">
                @include('pages.collections')
                @include('pages.project')
                @include('pages.products')
                @include('pages.about')
                @include('pages.services')
                @include('pages.contact')
                @include('includes.footer')
        </div>
@endsection