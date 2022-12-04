<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UsersController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(['status' => 200, 'data' => User::all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function pagination()
    {
        $name = request('name');
        $page = request('page') - 1;
        $limit = request('limit');
        $offset = $limit * $page;
        $totalRows = User::where('name', 'like', "%" . $name . "%")->count();
        $totalPage = ceil($totalRows / $limit);

        $user = User::where('name', 'like', "%" . $name . "%")->offset($offset)->limit($limit)->get();

        if ($user) {
            return response()->json(['status' => '200', 'data' => $user, 'page' => $page + 1, 'limit' => $limit, 'totalRows' => $totalRows, 'totalPage' => $totalPage]);
        } else {
            return response()->json(['status' => '404', 'message' => 'Data Not Found']);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->messages());
        }

        $user = User::create([
            'name' => request('name'),
            'email' => request('email'),
            'password' => Hash::make(request('password')),
        ]);

        if ($user) {
            return response()->json(['message' => 'Register Successfully']);
        } else {
            return response()->json(['message' => 'Register Failed']);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::findOrFail($id);

        if ($user) {
            return response()->json(['status' => '200', 'data' => $user]);
        } else {
            return response()->json(['status' => '404', 'message' => 'Data Not Found']);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        $validator = Validator::make(request()->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->messages());
        }

        $user = User::findOrFail($id)
            ->update([
                'name' => request('name'),
                'email' => request('email'),
                'password' => Hash::make(request('password')),
            ]);

        if ($user) {
            return response()->json(['status' => 200, 'message' => 'Update Successfully']);
        } else {
            return response()->json(['status' => 400, 'message' => 'Update Failed']);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::findOrFail($id)
            ->delete();

        if ($user) {
            return response()->json(['status' => 200, 'message' => 'Delete Successfully']);
        } else {
            return response()->json(['status' => 400, 'message' => 'Delete Failed']);
        }
    }
}
