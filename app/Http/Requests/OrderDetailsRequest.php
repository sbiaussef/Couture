<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class OrderDetailsRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
    public static function getRules(){
        return [
            'emmanchure'=>'required|numeric|max:300',
            'haut_du_bras'=>'required|numeric|max:300',
            'tour_du_poignet'=>'required|numeric|max:300',
            'longueur_des_manches'=>'required|numeric|max:300',
            'tour_des_hanches'=>'required|numeric|max:300',
            'tour_de_taille'=>'required|numeric|max:300',
            'tour_de_poitrine'=>'required|numeric|max:300',
            'profondeur_du_col'=>'required|numeric|max:300',
            'type_du_col'=>'required|string',
            'longueur_poitrine'=>'required|numeric|max:300',
            'taille'=>'required|numeric|max:300',
            'taille_des_epaules'=>'required|numeric|max:300',
        ];
    }
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return self::getRules();
    }
}
