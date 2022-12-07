<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Merek;
use Validator, Response;

class MerekController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $merek = Merek::all();
      return view('dashboard.merek.index', compact('merek'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $rules     = array(
                          'merek'   => 'required|unique:merek'
                        );

      $validator = Validator::make($request->all(), $rules);

      if($validator->fails())
      {
          return response()->json([
              'success' => false,
              'errors'   => $validator->errors()->toArray()
              ]);
      }

      $merek = Merek::create([
          'merek' => $request->merek
      ]);


      return response()->json([
             'success'  => true,
             'data' => $merek
             ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
      $merek = Merek::find($id);
      return Response::json($merek);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      $rules = array(
                  'merek'   => 'required|unique:merek,merek,' . $id,
                    );

      $validator = Validator::make($request->all(), $rules);

      if($validator->fails())
      {
          return response()->json([
              'success' => false,
              'errors'   => $validator->errors()->toArray()
              ]);
      }

      $merek = Merek::findOrFail($id);
      $merek->update($request->all());

      return response()->json([
             'success'  => true,
             'data' => $merek
             ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      Merek::destroy($id);
      return response()->json([
             'success' => true,
             ]);
    }
}
