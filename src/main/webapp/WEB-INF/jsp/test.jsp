<html lang="en">
<head>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>In Place merge Two sorted arrays</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/navbar-fixed/">

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
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
            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-warning my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>
<-- End of header -->

<main role="main" class="container">
    <div class="jumbotron_article">
        <!--Aticle title-->
        <h1 class="reader-article-header__title t-40 t-black t-normal pv4">In place merge two sorted arrays&nbsp;</h1>
        <!-- Article publisher date-->
        <br>
        <ul class="reader-article-header__meta t-14 t-black--light t-normal mv4">
            <li>
                <time class="reader-article-header__publish-date">Published on May 10, 2017</time>
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
                        <div id="ember59" class="reader-author-info__content artdeco-entity-lockup__content ember-view">
                            <div id="ember60"
                                 class="reader-author-info__author-lockup--flex artdeco-entity-lockup__title ember-view">
                                <a data-control-name="read_profile" href="" id="ember61"
                                   class="reader-author-info__meta-name display-flex align-items-center ember-view">
                                    <h2 class="reader-author-info__text reader-author-info__name t-16 t-bold reader-author-info__meta-author-detail--has-hover mr2">
                                        &#8195;Jallal Elhazzat</h2></a></div>
                            <div id="ember62" class="artdeco-entity-lockup__subtitle ember-view">
                                <div id="ember63" class="t-black--light ember-view">
                                    <span class="lt-line-clamp__line lt-line-clamp__line--last">&#8195;Software Engineer | Scholar and technology enthusiast </span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="reader-author-info__interactive-items">
                        <a data-control-name="read_activity" href="" id="ember91"
                           class="reader-author-info__total-articles link-without-visited-state ember-view">39
                            articles</a>
                        <button data-control-name="actor_follow_toggle" aria-pressed="false" aria-label="Follow"
                                id="ember64"
                                class="follow reader-author-info__follow-button artdeco-button artdeco-button--secondary ml2 ember-view">
                            <li-icon aria-hidden="true" type="plus-icon" class="artdeco-button__icon" size="small">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" data-supported-dps="16x16"
                                     fill="currentColor" width="16" height="16" focusable="false">
                                    <path d="M14 9H9v5H7V9H2V7h5V2h2v5h5v2z"></path>
                                </svg>
                            </li-icon>
                            <span aria-hidden="true">Follow</span>
                        </button>
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
            Given two sorted arrays X and Y of size m and n each. Merge elemnets of X and with the elements of Y by
            maintaining the sorted order. the conversion should be done in place and whithout using any other data
            structuress.
            for example, input : X = {1,4,7,8,10} and Y = {2,3,9} will show this output X = {1,2,3,4,7} and Y = {8,9,10}
        </p>
        <p>&#8195;</p>
        <h2><strong>Solution</strong></h2>
        <p>&#8201;</p>
        <p>
            The idea is very simple. We consider each element of array X and ignore element if it's already correct else
            we swap
            it with the smallest element which happens to be first element of Y. After swaoing we move the element to it
            correct position
            in Y to maintain the sorted order. The merge process is almost similar to merge routine of merge sort
            algorithem.
            the only difference is that we are using auxiliary array for merging.
        </p>
        <!--Start oc code section -->
        <p>&#8195;</p>
        <div class="code_section" spellcheck="false">
            import java.util.Arrays;
            public static void merge(int[] X, int[] Y){

            int m = X.length;
            int n = Y.length;
            for (int i = 0; i < m; i++){
            if (X[i] > Y[0]){
            int temp = X[i];
            X[i] = Y[0];
            Y[0] = temp;
            int first = Y[0];
            int k;
            for (k = 1; k < n && Y[k] < first; k++) {
            Y[k - 1] = Y[k];
            }
            Y[k - 1] = first;
            } } }
        </div>
        <p>&#8201;</p>
        <!--End oc code section -->
        <p>Below is the testing function that will test the above code:</p>
        <!--Start oc code section -->
        <p>&#8201;</p>
        <div class="code_section" spellcheck="false">
            public static void main (String[] args){

            int[] X = { 1, 4, 7, 8, 10 };
            int[] Y = { 2, 3, 9 };
            merge(X, Y);
            System.out.println("X: " + Arrays.toString(X));
            System.out.println("Y: " + Arrays.toString(Y));
            }
        </div>
        <p>&#8201;</p>
        <!--End oc code section -->
        <!--start of the out put data-->
        <h2><strong>Program output</strong></h2>
        <p>&#8201;</p>
        <div class="code_section" spellcheck="false">
            <p> X = 1 2 3 4 7 and  Y = 8 9 10</p>
        </div>
        <p>&#8201;</p>
        <h2><strong>Code analysis</strong></h2>
        <p>&#8201;</p>
        <p> The time complexity of the solution is O(mn) and ausilliary space used by the program is O(1). The problem
            can in fact be solved in linear time and constant space. </p>
    </div>
</main>
<p>&#8201;</p>
<p>&#8201;</p>
</body>
</html>