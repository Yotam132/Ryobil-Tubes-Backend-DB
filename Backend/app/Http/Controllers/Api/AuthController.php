<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Validator;

//Mail
use Mail;
use App\Mail\RyobilMail;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $registrationData = $request->all();
        $validate = Validator::make($registrationData, [
            'username' => 'required|max:60',
            'email' => 'required|email:rfc,dns|unique:users',
            'password' => 'required',
            'alamat' => 'required',
        ]);

        if($validate->fails())
        {
            return response(['message' => $validate->errors()], 400);
        }

        $registrationData['password'] = bcrypt($request->password);
        $registrationData['is_verified'] = 0;
        $registrationData['is_admin'] = 0;
        $registrationData['urlImage'] = "";

        $user = User::create($registrationData);

        try{
            $detail = [
                'body' => $user['username'],
                'idUser' => $user['id'],
            ];
            
            Mail::to($user['email'])->send(new RyobilMail($detail));
        }catch(Exception $e){
            return response(['message' => 'Terdapat permasalahan pada email'], 220);
        }

        return response([
            'message' => 'Berhasil melakukan registrasi, silahkan aktifkan akun anda terlebih dahulu!',
            'user' => $user
        ], 200);
    }

    public function login(Request $request)
    {
        $loginData = $request->all();
        $validate = Validator::make($loginData, [
            'email' => 'required|email:rfc,dns',
            'password' => 'required'
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);
            
        if(!Auth::attempt($loginData))
            return response(['message' => 'Email / Password salah'], 401);

        $user = Auth::user();

        if($user->is_verified === 0)
            return response(['message' => 'Silahkan Aktivasi akun anda terlebih dahulu'], 401);

        $token = $user->createToken('Authentication Token')->accessToken;

        return response([
            'message' => 'Selamat Datang!',
            'user' => $user,
            'token_type' => 'Bearer',
            'access_token' => $token
        ]);
    }


    // FUNGSI UGD

    public function index()
    {
        $users = User::all();

        if(count($users) > 0)
        {
            return response([
                'message' => 'Berhasil menampilkan data!',
                'data' => $users
            ], 200);
        }

        return response([
            'message' => 'Empty',
            'data' => null
        ], 400);
    }

    public function show($id)
    {
        $user = User::find($id);
    

        $user->password = $hash;

        if(!is_null($user))
        {
            return response([
                'message' => 'Berhasil menampilkan data!',
                'data' => $user
            ], 200);
        }

        return response([
            'message' => 'User tidak ditemukan',
            'data' => null
        ], 404);
    }

    public function getLoginUser()
    {
        $user = Auth::user();

        if(!is_null($user))
        {
            return response([
                'message' => 'Berhasil menampilkan data!',
                'data' => $user
            ], 200);
        }

        return response([
            'message' => 'User tidak ditemukan',
            'data' => null
        ], 404);
    }

    public function destroy($id)
    {
        $user = User::find($id);

        if(is_null($user))
        {
            return response([
                'message' => 'User tidak ditemukan',
                'data' => null
            ], 404);
        }

        if($user->delete())
        {
            return response([
                'message' => 'Berhasil menghapus user',
                'data' => $user
            ], 200);
        }

        return response([
            'message' => 'Gagal menghapus user',
            'data' => null
        ], 400);
    }

    public function update(Request $request, $id)
    {
        $user = User::find($id);
        if(is_null($user))
        {
            return response([
                'message' => 'User tidak ditemukan',
                'data' => null
            ], 404);
        }

        $updateData = $request->all();
        $validate = Validator::make($updateData, [
            'username' => 'required|max:60',
            'alamat' => 'required',
        ]);

        if($validate->fails())
            return response(['message' => $validate->errors()], 400);

        $user->username = $updateData['username'];
        $user->email = $user['email'];
        $user->alamat = $updateData['alamat'];
        $user->is_verified = $user['is_verified'];
        $user->is_admin = $user['is_admin'];
        $user->urlImage = $user['urlImage'];

        if($user->save())
        {
            return response([
                'message' => 'Berhasil mengubah user!',
                'data' => $user
            ], 200);
        }

        return response([
            'message' => 'Gagal mengubah user',
            'data' => null
        ], 400);
    }

    public function verify($id)
    {
        $user = User::find($id);

        if($user->is_verified === 0)
        {
            $user->username = $user['username'];
            $user->email = $user['email'];
            $user->password = $user['password'];
            $user->alamat = $user['alamat'];
            $user->is_verified = 1;
            $user->is_admin = $user['is_admin'];
            $user->urlImage = $user['urlImage'];

            if($user->save())
            {
                return response([
                    'message' => 'Aktivasi Berhasil',
                ], 200);
            }

            return response([
                'message' => 'Aktivasi Gagal',
            ], 400);
        }
        else
        {
            return response([
                'message' => 'Akun anda sudah aktif',
            ], 200);
        }
    }
}
