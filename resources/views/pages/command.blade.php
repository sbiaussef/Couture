@extends('Master.layout')

@section('style')

<link rel="stylesheet" href="/css/command.css">

@endsection
@section('content')
{{-- @if ($errors->isNotEmpty())
    {{ dd($errors) }}
@endif --}}
@include('includes.background')
<div class="container">
    <form action="{{route('command')}}" method="POST">
        {{ csrf_field() }}
        <input type="hidden" name="product_slug" value="{{$products->first()->slug}}">
        <div class="command-top">
            <div class="row">
                <div class="col-md-4">
                    <h2 class="title">DÉTAILS DU CLIENT</h2>
                </div>
            </div>
            <div class="wrapper row">

                <div class="col-md-5 command-header">
                    <div class="form-group icon-graph ">
                        <label for="name">Nom</label>
                        <div class="input-icone">
                            <i class="fa fa-user icon"></i>
                        </div>
                        <input type="text" name="name" id="name" value="{{old('name')}}" aria-describedby="helpId">
                        @if ($errors->has('name'))
                        @foreach ( $errors->get('name') as $error)
                        <li class="text-danger">{{ $error }}</li>
                        @endforeach
                        @endif
                    </div>
                    <div class="form-group ">
                        <label for="phone">TÉLÉPHONE</label>
                        <div class="input-icone">
                            <i class="fa fa-phone icon"></i>
                        </div>
                        <input type="text" name="phone" id="phone" value="{{old('phone')}}" placeholder=""
                            aria-describedby="helpId">
                        @if ($errors->has('phone'))
                        @foreach ( $errors->get('phone') as $error)
                        <li class="text-danger">{{ $error }}</li>
                        @endforeach
                        @endif
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="form-group ">
                        <label for="email">EMAIL</label>
                        <div class="input-icone">
                            <i class="fa fa-envelope-o icon"></i>
                        </div>
                        <input type="text" name="email" id="email" value="{{old('email')}}" placeholder=""
                            aria-describedby="helpId">
                        @if ($errors->has('email'))
                        @foreach ( $errors->get('email') as $error)
                        <li class="text-danger">{{ $error }}</li>
                        @endforeach
                        @endif
                    </div>
                    <div class="form-group ">
                        <label for="comment">COMMENTAIRE</label>
                        <div class="input-icone">
                            <i class="fa fa-comment icon"></i>
                        </div>
                        <input type="text" name="comment" id="comment" value="{{old('comment')}}" placeholder=""
                            aria-describedby="helpId">
                        @if ($errors->has('comment'))
                        @foreach ( $errors->get('comment') as $error)
                        <li class="text-danger">{{ $error }}</li>
                        @endforeach
                        @endif
                    </div>
                </div>

            </div>
        </div>
        <div class="card">
            <div class="container-fliud">
                <div class="wrapper row">
                    <div class="preview col-md-6">
                        <div class="img">
                            <img src="/img/model.png" alt="taille model" class="img-responsive">
                        </div>
                    </div>
                    <div class="col-md-6">

                        <div class="details">
                            <div>
                                <span>1 - Emmanchure</span>
                                <input type="number" name="emmanchure" value="{{old('emmanchure')}}" class="input-text " placeholder=""
                                    aria-describedby="helpId">
                                @if ($errors->has('emmanchure'))
                                @foreach ( $errors->get('emmanchure') as $error)
                                <li class="text-danger">{{ $error }}</li>
                                @endforeach
                                @endif
                            </div>
                            <div>
                                <span>2 - Haut du bras</span>
                                <input type="number" value="{{old('haut_du_bras')}}" name="haut_du_bras" class="input-text " placeholder=""
                                    aria-describedby="helpId">
                                @if ($errors->has('haut_du_bras'))
                                @foreach ( $errors->get('haut_du_bras') as $error)
                                <li class="text-danger">{{ $error }}</li>
                                @endforeach
                                @endif
                            </div>
                            <div>
                                <span>3 - Tour du poignet</span>
                                <input type="number" value="{{old('tour_du_poignet')}}" name="tour_du_poignet" class="input-text " placeholder=""
                                    aria-describedby="helpId">
                                @if ($errors->has('tour_du_poignet'))
                                @foreach ( $errors->get('tour_du_poignet') as $error)
                                <li class="text-danger">{{ $error }}</li>
                                @endforeach
                                @endif
                            </div>
                            <div>
                                <span>4 - Longueur des manches</span>
                                <input type="number" value="{{old('longueur_des_manches')}}" name="longueur_des_manches" class="input-text " placeholder=""
                                    aria-describedby="helpId">
                                @if ($errors->has('longueur_des_manches'))
                                @foreach ( $errors->get('longueur_des_manches') as $error)
                                <li class="text-danger">{{ $error }}</li>
                                @endforeach
                                @endif
                            </div>
                            <div>
                                <span>5 - Tour des hanches</span>
                                <input type="number" value="{{old('tour_des_hanches')}}" name="tour_des_hanches" class="input-text " placeholder=""
                                    aria-describedby="helpId">
                                @if ($errors->has('tour_des_hanches'))
                                @foreach ( $errors->get('tour_des_hanches') as $error)
                                <li class="text-danger">{{ $error }}</li>
                                @endforeach
                                @endif
                            </div>
                            <div>
                                <span>6 - Tour de taille</span>
                                <input type="number" value="{{old('tour_de_taille')}}" name="tour_de_taille" class="input-text " placeholder=""
                                    aria-describedby="helpId">
                                @if ($errors->has('tour_de_taille'))
                                @foreach ( $errors->get('tour_de_taille') as $error)
                                <li class="text-danger">{{ $error }}</li>
                                @endforeach
                                @endif
                            </div>
                            <div>
                                <span>7 - Tour de poitrine</span>
                                <input type="number" value="{{old('tour_de_poitrine')}}" name="tour_de_poitrine" class="input-text " placeholder=""
                                    aria-describedby="helpId">
                                @if ($errors->has('tour_de_poitrine'))
                                @foreach ( $errors->get('tour_de_poitrine') as $error)
                                <li class="text-danger">{{ $error }}</li>
                                @endforeach
                                @endif
                            </div>
                            <div>
                                <span>8 - Profondeur du col</span>
                                <input type="number" value="{{old('profondeur_du_col')}}" name="profondeur_du_col" class="input-text " placeholder=""
                                    aria-describedby="helpId">
                                @if ($errors->has('profondeur_du_col'))
                                @foreach ( $errors->get('profondeur_du_col') as $error)
                                <li class="text-danger">{{ $error }}</li>
                                @endforeach
                                @endif
                            </div>
                            <div class="radio-form">
                                <span><b>Type de col :</b></span>
                                <span class="col">Rond</span><input type="radio" value="rond" checked
                                    class="input-radio" name="type_du_col">
                                <span class="col">V</span><input type="radio" value="v" class="input-radio"
                                    name="type_du_col">
                            </div>

                            <div>
                                <span>9 - Longueur poitrine</span>
                                <input type="number" value="{{old('longueur_poitrine')}}" name="longueur_poitrine" class="input-text " placeholder=""
                                    aria-describedby="helpId">
                                @if ($errors->has('longueur_poitrine'))
                                @foreach ( $errors->get('longueur_poitrine') as $error)
                                <li class="text-danger">{{ $error }}</li>
                                @endforeach
                                @endif
                            </div>
                            <div>
                                <span>10 - Taille</span>
                                <input type="number" value="{{old('taille')}}" name="taille" class="input-text " placeholder=""
                                    aria-describedby="helpId">
                                @if ($errors->has('taille'))
                                @foreach ( $errors->get('taille') as $error)
                                <li class="text-danger">{{ $error }}</li>
                                @endforeach
                                @endif
                            </div>
                            <div>
                                <span>11 - Taille des épaules</span>
                                <input type="number" value="{{old('taille_des_epaules')}}" name="taille_des_epaules" class="input-text " placeholder=""
                                    aria-describedby="helpId">
                                @if ($errors->has('taille_des_epaules'))
                                @foreach ( $errors->get('taille_des_epaules') as $error)
                                <li class="text-danger">{{ $error }}</li>
                                @endforeach
                                @endif
                            </div>
                            <div class="accent-button button">
                                <button type="submit">take it now</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
@include('includes.footer')
@endsection