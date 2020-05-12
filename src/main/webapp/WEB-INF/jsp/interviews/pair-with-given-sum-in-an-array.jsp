<html lang="en">
<head>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Find pair with given sum in an array</title>
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
    <a class="navbar-brand" href="/welcome"><h1><strong>Home</strong></h1></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <br>&#8195;</br>
    <br>&#8195;</br>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="#"> <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><strong>Java</strong></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><strong>Springboot</strong></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><strong>Interviews</strong></a>
            </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0">
            <input class="form-control mr-sm-2" type="text" id="tags" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-warning my-2 my-sm-0" id="search" type="submit">Search</button>
        </form>
    </div>
</nav>
<-- End of header -->

<main role="main" class="container">
    <div class="jumbotron_article">
        <!--Aticle title-->
        <h1 class="reader-article-header__title t-40 t-black t-normal pv4">Find pair with given sum in an array</h1>
        <!-- Article publisher date-->
        <br>
        <ul class="reader-article-header__meta t-14 t-black--light t-normal mv4">
            <li>
                <time class="reader-article-header__publish-date">Published on May 10, 2020</time>
            </li>
        </ul>
        <!-- Author information -->
        <div class="reader-author-info__container-wrapper">
            <div class="reader-author-info__container reader-author-info__container--reactions-enable">
                <div id="ember51" class="display-flex align-items-center justify-space-between ember-view">
                    <div id="ember52" class="artdeco-entity-lockup artdeco-entity-lockup--size-4 ember-view">
                        <div id="ember53"
                             class="artdeco-entity-lockup__image artdeco-entity-lockup__image--type-circle ember-view"
                             type="circle">
                            <a data-control-name="read_profile" href="" id="ember54"
                               class="reader-author-info__meta-image ember-view">
                                <div id="ember55" class="ml2 feed-shared-avatar-image b0 member ember-view">
                                    <div id="ember56" class="presence-entity presence-entity--size-4 ember-view">
                                        <img title="Tom Goldenberg" src="/images/rick.jpeg" loading="lazy"
                                             alt="Tom Goldenberg" id="ember57"
                                             class="avatar member EntityPhoto-circle-4 presence-entity__image EntityPhoto-circle-4 lazy-image ember-view">
                                        <div id="ember58"
                                             class=" presence-entity__indicator presence-entity__indicator--size-4 presence-indicator hidden presence-indicator--size-4 ember-view">
                                            <span class="visually-hidden"></span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        &#8195;
                        <div id="ember59" class="reader-author-info__content artdeco-entity-lockup__content ember-view">
                            <div id="ember60"
                                 class="reader-author-info__author-lockup--flex artdeco-entity-lockup__title ember-view">
                                <a data-control-name="read_profile" href="" id="ember61" class="reader-author-info__meta-name display-flex align-items-center ember-view">
                                    <h2 class="reader-author-info__text reader-author-info__name t-16 t-bold reader-author-info__meta-author-detail--has-hover mr2">
                                        Jallal Elhazzat</h2></a></div>
                            <div id="ember62" class="artdeco-entity-lockup__subtitle ember-view">
                                <div id="ember63" class="t-black--light ember-view">
                                    <span class="lt-line-clamp__line lt-line-clamp__line--last">Software Engineer | Scholar and technology enthusiast </span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="reader-author-info__interactive-items" id="articleCount">
                    </div>
                </div>
                <div id="ember65" class="reader-author-info__cta ml2 ember-view"></div>
            </div>
        </div>
        <!-- Author information end -->
        <!-- start of paragraph section -->
        <p>&#8195;</p>
        <h2><strong>Problem statement</strong></h2>
        <p>&#8201;</p>
        <p>
            In this example, let assume you will have two unsorted arrays of integers. Find a pair with a given sum.
        </p>
        <p>&#8195;</p>
        <h2><strong>Solution</strong></h2>
        <p>&#8201;</p>
        <p>
            You can use a map to solve the above problem in linear time. We use the map to insert each element of the array . We also check if the difference between the element in i and the sum-i in the map already exist. If the difference exist we print and exit.
        </p>
        <!--Start oc code section -->
        <p>&#8195;</p>
        <div class="code_section" spellcheck="false">
            // Naive method to find a pair in an array with given sum
            public static void findPair(int[] A, int sum)
            {
            // create an empty Hash Map
            Map<Integer, Integer> map = new HashMap<>();

            // do for each element
            for (int i = 0; i < A.length; i++)
            {
            // check if pair (arr[i], sum-arr[i]) exists

            // if difference is seen before, print the pair
            if (map.containsKey(sum - A[i]))
            {
            System.out.println("Pair found at index " +
            map.get(sum - A[i]) + " and " + i);
            return;
            }

            // store index of current element in the map
            map.put(A[i], i);
            }

            // No pair with given sum exists in the array
            System.out.println("Pair not found");
            }
        </div>
        <p>&#8201;</p>
        <!--End oc code section -->
        <p>Below is the testing function that will test the above code:</p>
        <!--Start oc code section -->
        <p>&#8201;</p>
        <div class="code_section" spellcheck="false">
            public static void main (String[] args) {

            int[] A = { 8, 7, 2, 5, 3, 1 };
            int sum = 10;
            findPair(A, sum);
            }
        </div>
        <p>&#8201;</p>
        <!--End oc code section -->
        <!--start of the out put data-->
        <h2><strong>Program output</strong></h2>
        <p>&#8201;</p>
        <div class="code_section" spellcheck="false">
            <p> Pair found at index 0 and 2</p>
        </div>
        <p>&#8201;</p>
        <h2><strong>Code analysis</strong></h2>
        <p>&#8201;</p>
        <p> The time complexity for this olution is O(n) and auxiliary space used by the program is O(n)</p>
    </div>
</main>
<p>&#8201;</p>
<p>&#8201;</p>
</body>

<script>
    $(document).ready(function () {
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
            url: "/update/article",
            data: JSON.stringify(search),
            dataType: 'json',
            cache: false,
            timeout: 600000,
            success: function (data) {
                var html = '';
                html +="<a data-control-name=\"read_activity\" href=\"\" id=\"ember91\" class=\"reader-author-info__total-articles link-without-visited-state ember-view\">"+data.publicationsCount+" articles</a>";
                html +="<button data-control-name=\"actor_follow_toggle\" aria-pressed=\"false\" aria-label=\"Follow\"id=\"ember64\"class=\"follow reader-author-info__follow-button artdeco-button artdeco-button--secondary ml2 ember-view\">";
                html +="<li-icon aria-hidden=\"true\" type=\"plus-icon\" class=\"artdeco-button__icon\" size=\"small\">";
                html +="<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 16 16\" data-supported-dps=\"16x16\" fill=\"currentColor\" width=\"16\" height=\"16\" focusable=\"false\">";
                html +="<path d=\"M14 9H9v5H7V9H2V7h5V2h2v5h5v2z\"></path> </svg> </li-icon> <span aria-hidden=\"true\">Follow</span> </button>";
                $("#articleCount").html(html);
            },
            error: function (e) {
                var json = "<h4>Ajax Response</h4><pre>"+e.responseText+"</pre>";
                $('#articleCount').html(json);
                console.log("ERROR : ", e);
            }
        });
    }
    function searchByKeyWords(search) {

        jQuery.ajax({
            success:function(data){
                top.location.href = '/welcome/'+search.search;
            }
        });
        return false;
    }
</script>

</html>