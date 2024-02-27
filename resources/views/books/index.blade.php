<!DOCTYPE html>
<html>
<head>
    <style>
        body {
    font-family: Arial, sans-serif;
}

.container {
    width: 80%;
    margin: auto;
}

table {
    width: 100%;
    border-collapse: collapse;
}

table, th, td {
    border: 1px solid #ddd;
    padding: 8px;
}

th {
    background-color: #f2f2f2;
    text-align: left;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

.search-bar {
    margin-bottom: 20px;
}

.search-bar input[type="text"] {
    padding: 10px;
    width: 80%;
    margin-right: 10px;
}

.search-bar input[type="submit"] {
    padding: 10px 20px;
}

    </style>
    <title>Library FPT</title>
</head>
<body>
    <h1>Books FPT</h1>

    <form method="GET" action="/books/search">
        <input type="text" name="search" placeholder="Search by name">
        <input type="submit" value="Search">
    </form>

    @if($books->isEmpty())
        <p>No books found.</p>
    @else
        <table>
            <thead>
                <tr>
                    <th>Title</th>
                    <th>ISBN</th>
                    <th>Publication Year</th>
                </tr>
            </thead>
            <tbody>
                @foreach($books as $book)
                    <tr>
                        <td>{{ $book->title }}</td>
                        <td>{{ $book->ISBN }}</td>
                        <td>{{ $book->pub_year }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    @endif
</body>
</html>
