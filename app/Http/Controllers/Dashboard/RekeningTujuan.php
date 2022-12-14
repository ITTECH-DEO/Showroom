<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\RekeningTujuan as RekeningTujuanModel;
use Session, Redirect;

class RekeningTujuan extends Controller
{
    public function index()
    {
        $rekening_tujuan = RekeningTujuanModel::find(1);
        return view('dashboard.pengaturan.rekening-tujuan.index', compact('rekening_tujuan'));
    }

    public function update(Request $request, $id)
    {
      $rekening_tujuan = RekeningTujuanModel::find($id);
      $rekening_tujuan->update($request->all());
      Session::flash('message', 'Mengatur Rekening Tujuan Sukses!');
      return Redirect::to('dashboard/rekening-tujuan');
    }
}
