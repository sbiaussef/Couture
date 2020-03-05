@extends('Master.layout')

@section('style')

<link rel="stylesheet" href="/css/command.css">

@endsection
@section('content')
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
                        <div class="form-group icon-graph">
                            <label for="name">Nom</label>
                            <div class="input-icone">
                                <i class="fa fa-user icon"></i>
                            </div>
                            <input type="text" name="name" id="name" class="" placeholder="" aria-describedby="helpId">
                        </div>
                        <div class="form-group">
                            <label for="phone">TÉLÉPHONE</label>
                            <div class="input-icone">
                                <i class="fa fa-phone icon"></i>
                            </div>
                            <input type="text" name="phone" id="phone" class="" placeholder="" aria-describedby="helpId">
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="form-group">
                            <label for="email">EMAIL</label>
                            <div class="input-icone">
                                <i class="fa fa-envelope-o icon"></i>
                            </div>
                            <input type="text" name="email" id="email" class="" placeholder="" aria-describedby="helpId">
                        </div>
                        <div class="form-group">
                            <label for="comment">COMMENTAIRE</label>
                            <div class="input-icone">
                                <i class="fa fa-comment icon"></i>
                            </div>
                            <input type="text" name="comment" id="comment" class="" placeholder=""
                                aria-describedby="helpId">
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
                                        <input type="text" name="emmanchure" class="input-text" placeholder="" aria-describedby="helpId">
                                    </div>
                                    <div>
                                        <span>2 - Haut du bras</span>
                                        <input type="text" name="haut_du_bras" class="input-text" placeholder="" aria-describedby="helpId">
                                    </div>
                                    <div>
                                        <span>3 - Tour du poignet</span>
                                        <input type="text" name="tour_du_poignet" class="input-text" placeholder="" aria-describedby="helpId">
                                    </div>
                                    <div>
                                        <span>4 - Longueur des manches</span>
                                        <input type="text" name="longueur_des_manches" class="input-text" placeholder="" aria-describedby="helpId">
                                    </div>
                                    <div>
                                        <span>5 - Tour des hanches</span>
                                        <input type="text" name="tour_des_hanches" class="input-text" placeholder="" aria-describedby="helpId">
                                    </div>
                                    <div>
                                        <span>6 - Tour de taille</span>
                                        <input type="text" name="tour_de_taille" class="input-text" placeholder="" aria-describedby="helpId">
                                    </div>
                                    <div>
                                        <span>7 - Tour de poitrine</span>
                                        <input type="text" name="tour_de_poitrine" class="input-text" placeholder="" aria-describedby="helpId">
                                    </div>
                                    <div>
                                        <span>8 - Profondeur du col</span>
                                        <input type="text" name="profondeur_du_col" class="input-text" placeholder="" aria-describedby="helpId">
                                    </div>
                                    <div class="radio-form">
                                        <span><b>Type de col :</b></span>
                                        <span class="col">Rond</span><input type="radio" value="rond" checked class="input-radio" name="type_du_col">
                                        <span class="col">V</span><input type="radio" value="v" class="input-radio" name="type_du_col">
                                    </div>
                                    
                                    <div>
                                        <span>9 - Longueur poitrine</span>
                                        <input type="text" name="longueur_poitrine" class="input-text" placeholder="" aria-describedby="helpId">
                                    </div>
                                    <div>
                                        <span>10 - Taille</span>
                                        <input type="text" name="taille" class="input-text" placeholder="" aria-describedby="helpId">
                                    </div>
                                    <div>
                                        <span>11 - Taille des épaules</span>
                                        <input type="text" name="taille_des_epaules" class="input-text" placeholder="" aria-describedby="helpId">
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