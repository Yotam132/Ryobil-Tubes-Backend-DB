<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Validation\Rule;
use Validator;
use App\Models\Paket;

class PaketController extends Controller
{
    public function index()
    {
        $pakets = Paket::all();

        if(count($pakets) > 0)
        {
            return response([
                'message' => 'Berhasil mengambil data!',
                'data' => $pakets
            ], 200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ], 400);
    }

    public function show($id)
    {
        $paket = Paket::find($id);

        if(!is_null($paket))
        {
            return response([
                'message' => 'Berhasil mengambil data!',
                'data' => $paket
            ], 200);
        }

        return response([
            'message' => 'Paket tidak ditemukan',
            'data' => null
        ], 404);
    }

    public function store(Request $request)
    {
        $storeData = $request->all();
        $validate = Validator::make($storeData, [
            'jenisPaket' => 'required',
            'hargaLayananPaket' => 'required | numeric',
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $paket = Paket::create($storeData);
        return response([
            'message' => 'Berhasil menambah pilihan paket!',
            'data' => $paket
        ], 200);
    }

    public function destroy($id)
    {
        $paket = Paket::find($id);

        if(is_null($paket))
        {
            return response([
                'message' => 'Paket tidak ditemukan',
                'data' => null
            ], 404);
        }

        if($paket->delete())
        {
            return response([
                'message' => 'Berhasil menghapus jenis Paket',
                'data' => $paket
            ], 200);
        }

        return response([
            'message' => 'Gagal menghapus jenis paket',
            'data' => null
        ], 400);
    }

    public function update(Request $request, $id)
    {
        $paket = Paket::find($id);
        if(is_null($paket))
        {
            return response([
                'message' => 'Pilihan paket tidak terdaftar',
                'data' => null
            ], 404);
        }

        $updateData = $request->all();
        $validate = Validator::make($updateData, [
            'jenisPaket' => 'required',
            'hargaLayananPaket' => 'required | numeric',
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $paket->jenisPaket = $updateData['jenisPaket'];
        $paket->hargaLayananPaket = $updateData['hargaLayananPaket'];

        if($paket->save())
        {
            return response([
                'message' => 'Berhasil mengubah jenis Paket!',
                'data' => $paket
            ], 200);
        }

        return response([
            'message' => 'Gagal mengubah jenis Paket',
            'data' => null
        ], 400);
    }
}
