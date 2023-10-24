<!doctype html>
<html lang="en">
    <head>
        <title>Title</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        {{-- stylesheet --}}
        <link rel="stylesheet" href="{{asset('assets/style.css')}}">
    </head>
    <body>
        {{-- table starts --}}
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>City</th>
                    <th>State-Id</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($states as $city)
                <tr class="table-info">
                    <td>{{ $city->id }}</td>
                    <td>{{ $city->city_name }}</td>
                    <td>{{ $city->state_id }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{-- table ends --}}
         {{-- button  --}}
        <a href="{{ route('export.csv') }}" class="link"><button>Download CSV</button></a>
    </body>
</html>