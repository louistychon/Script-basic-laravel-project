echo Hello, what\'s the name of your project ?
read varname
composer create-project laravel/laravel $varname
cd $varname
rm readme.md
cd resources/views
rm welcome.blade.php
mkdir layout pages partial
cd layout
touch index.blade.php
echo '''<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    @vite("resources/css/app.css")
</head>
<body>
    @include("partial.header")
    @yield("content")
    @include("partial.footer")
</body>
</html>''' > index.blade.php
cd ..
cd partial 
touch footer.blade.php header.blade.php
echo '''<footer>This is your footer</footer>''' > footer.blade.php
echo '''<header>This is your header</header>''' > header.blade.php
cd ..
cd pages
touch page1.blade.php
echo '''@extends("layout.index")
@section("content")
<p>Hello world !</p>
@endsection'''> page1.blade.php
touch page2.blade.php
echo '''@extends("layout.index")
@section("content")
<p>Hello world !</p>
@endsection'''> page2.blade.php
touch page3.blade.php
echo '''@extends("layout.index")
@section("content")
<p>Hello world !</p>
@endsection'''> page3.blade.php
cd ../../..
echo '''Well, its done ! This script was made by Louis Tychon, come and say hi : https://github.com/louistychon'''
code .