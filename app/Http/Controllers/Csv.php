<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\State;
use App\Exports\CsvExport;
use Maatwebsite\Excel\Facades\Excel; 
class Csv extends Controller
{
    public function index(){
        $states=State::all();
        return view('csv',compact('states'));
    }
    public function export_csv(){
        return Excel::download(new CsvExport, 'state.csv');
    }
}