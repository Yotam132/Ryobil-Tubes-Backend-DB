<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use Illuminate\Validation\Rule;
use Validator;
use App\Models\Pesanan;

class PesananController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        $pesanans = Pesanan::where('userid', $user->id)->get();

        if(count($pesanans) > 0)
        {
            return response([
                'message' => 'Berhasil mengambil data!',
                'data' => $pesanans
            ], 200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ], 400);
    }

    public function show($id)
    {
        $pesanan = Pesanan::find($id);

        if(!is_null($pesanan))
        {
            return response([
                'message' => 'Berhasil mengambil data!',
                'data' => $pesanan
            ], 200);
        }

        return response([
            'message' => 'Pesanan tidak ditemukan',
            'data' => null
        ], 404);
    }

    public function store(Request $request)
    {
        $storeData = $request->all();
        $validate = Validator::make($storeData, [
            'pengirim_nama' => 'required',
            'pengirim_alamat' => 'required',
            'pengirim_nomor' => 'required|digits:12',

            'penerima_nama' => 'required',
            'penerima_alamat' => 'required',
            'penerima_nomor' => 'required|digits:12',

            'jenisKurir' => 'required',
            'jenisPaket' => 'required',
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $storeData['userid'] = Auth::user()->id;
        $pesanan = Pesanan::create($storeData);
        return response([
            'message' => 'Pemesanan berhasil!',
            'data' => $pesanan
        ], 200);
    }

    public function destroy($id)
    {
        $pesanan = Pesanan::find($id);

        if(is_null($pesanan))
        {
            return response([
                'message' => 'Pemesanan tidak ditemukan!',
                'data' => null
            ], 404);
        }

        if($pesanan->delete())
        {
            return response([
                'message' => 'Berhasil menghapus pesanan!',
                'data' => $pesanan
            ], 200);
        }

        return response([
            'message' => 'Gagal menghapus pesanan',
            'data' => null
        ], 400);
    }

    public function update(Request $request, $id)
    {
        $pesanan = Pesanan::find($id);
        if(is_null($pesanan))
        {
            return response([
                'message' => 'Pesanan tidak ditemukan',
                'data' => null
            ], 404);
        }

        $updateData = $request->all();
        $validate = Validator::make($updateData, [
            'pengirim_nama' => 'required',
            'pengirim_alamat' => 'required',
            'pengirim_nomor' => 'required|digits:12',

            'penerima_nama' => 'required',
            'penerima_alamat' => 'required',
            'penerima_nomor' => 'required|digits:12',

            'jenisKurir' => 'required',
            'jenisPaket' => 'required',
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $pesanan->userid = Auth::user()->id;

        $pesanan->pengirim_nama = $updateData['pengirim_nama'];
        $pesanan->pengirim_alamat = $updateData['pengirim_alamat'];
        $pesanan->pengirim_nomor = $updateData['pengirim_nomor'];

        $pesanan->penerima_nama = $updateData['penerima_nama'];
        $pesanan->penerima_alamat = $updateData['penerima_alamat'];
        $pesanan->penerima_nomor = $updateData['penerima_nomor'];

        $pesanan->jenisKurir = $updateData['jenisKurir'];
        $pesanan->jenisPaket = $updateData['jenisPaket'];

        if($pesanan->save())
        {
            return response([
                'message' => 'Berhasil mengubah pesanan',
                'data' => $pesanan
            ], 200);
        }

        return response([
            'message' => 'Gagal mengubah pesanan',
            'data' => null
        ], 400);
    }
}
