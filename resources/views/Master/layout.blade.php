<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Say Couture - </title>
        
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css')}}">
        <link rel="stylesheet" href="{{ asset('css/bootstrap-theme.min.css')}}">
        <link rel="stylesheet" href="{{ asset('css/fontAwesome.css')}}">
        <link rel="stylesheet" href="{{ asset('css/light-box.css')}}">
        <link rel="stylesheet" href="{{ asset('css/owl-carousel.css')}}">
        <link rel="stylesheet" href="{{ asset('css/style.css')}}">
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

        @yield('style')

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script&display=swap" rel="stylesheet">
        <script src="{{ asset('js/vendor/modernizr-2.8.3-respond-1.4.2.min.js')}}"></script>
    </head>

<body>

        @yield('content')   

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="{{ asset('js/vendor/bootstrap.min.js')}}"></script>
    
    <script src="{{ asset('js/plugins.js')}}"></script>
    <script src="{{ asset('js/main.js')}}"></script>

    <script src="{{ asset('js/script.js')}}"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
      AOS.init();
    </script>

</body>
</html>