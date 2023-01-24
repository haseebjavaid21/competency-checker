<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
                integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" 
                crossorigin="anonymous"
        >
    </head>
    <body>
        <div id = "app">
        <h1 class="title is-1">Systems Engineering Competency Checker</h1>
            <question-list></question-list>
        </div>
    </body>
    <script src="{{ mix('js/app.js') }}"></script>
</html>
