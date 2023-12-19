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
    public function importCSV(Request $request)
    {
        $file = $request->file('csv_file'); // Get uploaded CSV file

        // Read the CSV file
        $csvData = array_map('str_getcsv', file($file));

        // Remove the header row if needed
        $header = array_shift($csvData);

        // Process and insert data into the database
        foreach ($csvData as $row) {
            State::create([
                'id'=>$row[0],
                'state_name' => $row[1], // Map CSV columns to your database columns
                'country_id' => $row[2],
                // ... map other columns accordingly
            ]);
        }

        return redirect()->back()->with('success', 'CSV data imported successfully.');
    }
}