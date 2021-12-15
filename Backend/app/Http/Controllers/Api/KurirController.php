<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Validation\Rule;
use Validator;
use App\Models\Kurir;

class KurirController extends Controller
{
    public function index()
    {
        $kurirs = Kurir::all();

        if(count($kurirs) > 0)
        {
            return response([
                'message' => 'Mengambil data sukses',
                'data' => $kurirs
            ], 200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ], 400);
    }

    public function show($id)
    {
        $kurir = Kurir::find($id);

        if(!is_null($kurir))
        {
            return response([
                'message' => 'Data kurir sukses diambil',
                'data' => $kurir
            ], 200);
        }

        return response([
            'message' => 'Kurir tidak terdaftar',
            'data' => null
        ], 404);
    }

    public function store(Request $request)
    {
        $storeData = $request->all();
        $validate = Validator::make($storeData, [
            'jenisKurir' => 'required',
            'hargaLayananKurir' => 'required | numeric',
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $kurir = Kurir::create($storeData);
        return response([
            'message' => 'Berhasil menambah Kurir!',
            'data' => $kurir
        ], 200);
    }

    public function destroy($id)
    {
        $kurir = Kurir::find($id);

        if(is_null($kurir))
        {
            return response([
                'message' => 'Kurir tidak terdaftar',
                'data' => null
            ], 404);
        }

        if($kurir->delete())
        {
            return response([
                'message' => 'Berhasil menghapus Kurir!',
                'data' => $kurir
            ], 200);
        }

        return response([
            'message' => 'Gagal menghapus Kurir',
            'data' => null
        ], 400);
    }

    public function update(Request $request, $id)
    {
        $kurir = Kurir::find($id);
        if(is_null($kurir))
        {
            return response([
                'message' => 'Kurir tidak terdaftar',
                'data' => null
            ], 404);
        }

        $updateData = $request->all();
        $validate = Validator::make($updateData, [
            'jenisKurir' => 'required',
            'hargaLayananKurir' => 'required | numeric',
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $kurir->jenisKurir = $updateData['jenisKurir'];
        $kurir->hargaLayananKurir = $updateData['hargaLayananKurir'];

        if($kurir->save())
        {
            return response([
                'message' => 'Berhasil mengubah Kurir!',
                'data' => $kurir
            ], 200);
        }

        return response([
            'message' => 'Gagal mengubah Kurir',
            'data' => null
        ], 400);
    }
}
