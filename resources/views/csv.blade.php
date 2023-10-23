<!doctype html>
<html lang="en">
    <head>
        <title>Title</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <style>
            .custom-table tbody td:hover {
                background-color: #f7f7f7;
                transition: background-color 0.3s;
            }
        </style>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <table class="table table-striped table-bordered table-responsive">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>State</th>
                    <th>Country Id</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($states as $state)
                <tr class="table-info">
                    <td>{{ $state->id }}</td>
                    <td>{{ $state->state_name }}</td>
                    <td>{{ $state->country_id }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <a href="{{ route('export.csv') }}" class="btn btn-primary">Download CSV</a>
    </body>
</html>