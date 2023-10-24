<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\State;//model

use App\Exports\CsvExport;//export
use Maatwebsite\Excel\Facades\Excel;//package-class

class Csv extends Controller
{   // data view function
    public function index()
    {
        $states=State::all();
        return view('csv',compact('states'));
    }
    public function export_csv()
    {
        return Excel::download(new CsvExport, 'city.csv');
    }
}