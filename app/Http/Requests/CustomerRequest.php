<?php

namespace sayCouture\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CustomerRequest extends FormRequest
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
            'name'=>'required|string|min:2',
            'email'=>'required|string|email|max:255',
            'phone' => 'required|regex:/(06)[0-9]{8}/'
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
