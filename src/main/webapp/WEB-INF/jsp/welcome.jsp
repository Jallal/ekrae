<html lang="en">
<head>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">
    <title>Ekrae</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/navbar-fixed/">

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!--have Ajx work -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</head>
<body>
<-- Start of header -->
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <br>&#8195;</br>
    <br>&#8195;</br>
    <a class="navbar-brand" href="welcome"><h1><strong>Home</strong></h1></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <br>&#8195;</br>
    <br>&#8195;</br>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href=""> <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link Java-Topics" href=""><strong>Java</strong></a>
            </li>
            <li class="nav-item">
                <a class="nav-link Springboot-Topics" href=""><strong>Springboot</strong></a>
            </li>
            <li class="nav-item">
                <a class="nav-link Interviews-Topics" href=""><strong>Interviews</strong></a>
            </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0">
            <input class="form-control mr-sm-2" type="text" id="tags" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-warning my-2 my-sm-0" id="search" type="submit">Search</button>
        </form>
    </div>
</nav>
<-- End of header -->
<main role="main" class="container" id="result">

</main>


<!-- Start of the script page-->
<script>
    $(document).ready(function () {
        $(".Java-Topics").on("click", function(evt) {
            evt.preventDefault();
            console.log("*****************ASTA LAVISTA BABAY*********************");
            var search = {};
            search["tag"]='Java';
            fire_ajax_submit(search);
        });

        $(".Springboot-Topics").on("click", function(evt) {
            console.log("*****************ASTA LAVISTA BABAY*********************");
            evt.preventDefault();
            var search = {};
            search["tag"]='Springboot';
            fire_ajax_submit(search);
        });

        $(".Interviews-Topics").on("click", function(evt) {
            console.log("*****************ASTA LAVISTA BABAY*********************");
            evt.preventDefault();
            var search = {};
            search["tag"]='Interviews Questions';
            fire_ajax_submit(search);
        });

        $('#search').click(function (evt) {
            //var query = $('#tags').val();
            evt.preventDefault();
            var search = {};
            search["search"] = $('#tags').val();
            searchByKeyWords(search);
        });
    });

    function fire_ajax_submit(search) {
        jQuery.ajax({
            type: "POST",
            contentType: "application/json",
            url: "/search/topics",
            data: JSON.stringify(search),
            dataType: 'json',
            cache: false,
            timeout: 600000,
            success: function (data) {
                var html = '';
                if (data.length > 0) {
                    for (var count = 0; count < data.length; count++) {
                        html +="<div class=\"jumbotron\">";
                        html +='<a class=\"navbar-brand\" href=\"articles/'+data[count].article_Info+'"><h1>'+data[count].title+'</h1></a>';
                        html +='<p>&#8195;</p>';
                        html +="<p class=\"lead\">"+data[count].desc+"</p>";
                        html +="<div class=\"col-md-12 text-center\">";
                        html +="<span class=\"float-md-right text-success\">"+data[count].tag+"</span>";
                        html +="</div></div>";
                    }} else {
                    html = '<div class=\"jumbotron\"> Data not found <div/>';
                }
                $("#result").html(html);
            },
            error: function (e) {
                var json = "<h4>Ajax Response</h4><pre>"+e.responseText+"</pre>";
                $('#result').html(json);
                console.log("ERROR : ", e);
            }
        });
    }

    function searchByKeyWords(search) {
        jQuery.ajax({
            type: "POST",
            contentType: "application/json",
            url: "/search/articles",
            data: JSON.stringify(search),
            dataType: 'json',
            cache: false,
            timeout: 600000,
            success: function (data) {
                var html = '';
                if (data.length > 0) {
                    for (var count = 0; count < data.length; count++) {
                        html +="<div class=\"jumbotron\">";
                        html +='<a class=\"navbar-brand\" href=\"articles/'+data[count].article_Info+'"><h1>'+data[count].title+'</h1></a>';
                        html +='<p>&#8195;</p>';
                        html +="<p class=\"lead\">"+data[count].desc+"</p>";
                        html +="<div class=\"col-md-12 text-center\">";
                        html +="<span class=\"float-md-right text-success\">"+data[count].tag+"</span>";
                        html +="</div></div>";
                    }} else {
                    html = '<div class=\"jumbotron\"> Data not found <div/>';
                }
                $("#result").html(html);
            },
            error: function (e) {
                var json = "<h4>Ajax Response</h4><pre>"+e.responseText+"</pre>";
                $('#result').html(json);
                console.log("ERROR : ", e);
            }
        });
    }
</script>

<script>
    window.onload = function () {
        var search = {};
        search["tag"]="all";
        fire_ajax_submit(search);
    };
</script>

<!-- Bootstrap core JavaScript
================================================== -->
</body>
</html>