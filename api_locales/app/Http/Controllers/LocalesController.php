<?php

namespace App\Http\Controllers;

use App\Models\Locales;
use Illuminate\Http\Request;
use Validator;

class LocalesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Locales::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }
    public function add(Request $request)
    {
        $rules=array(
            'nombre'=>'required',
            'sector_id'=>'required'
        );

        $validator=Validator::make($req->all(),$rules);
        if($validator->fails()){
            return $validator->errors();
        }else{
            $locales= new Locales;
            $locales->nombre=$request->nombre;
            $locales->descripcion=$request->descripcion;
            $locales->sector_id=$request->sector;
            $locales->recomendaciones=$request->recomendaciones;
            $locales->deleted_at=$request->deleted_at;
            $locales->created_at=$request->created_at;
            $locales->updated_at=$request->updated_at;
            $result=$locales->save();
        }
        
        

    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Locales  $locales
     * @return \Illuminate\Http\Response
     */
    public function show(Locales $locales)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Locales  $locales
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Locales $locales)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Locales  $locales
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $device= Locales::find($id);
        $device->delete();
        
    }
}
