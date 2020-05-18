<html lang="en">
<head>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Basic Akka Actors eith Java 8</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/navbar-fixed/">

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!--have Ajx work -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>

<body>
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
        <h1 class="reader-article-header__title t-40 t-black t-normal pv4">Basic Akka Actors with Java 8 and
            Maven&nbsp;</h1>
        <!-- Article publisher date-->
        <br>
        <ul class="reader-article-header__meta t-14 t-black--light t-normal mv4">
            <li>
                <time class="reader-article-header__publish-date">Published on May 17, 2020</time>
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
                                <a data-control-name="read_profile" href="" id="ember61"
                                   class="reader-author-info__meta-name display-flex align-items-center ember-view">
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
        <h2><strong>Akka Maven dependency</strong></h2>
        <p>&#8201;</p>
        <div class="code_section" spellcheck="false">
            <pre class=" language-markup"><code class=" language-markup"><span class="token tag"><span
                    class="token tag"><span class="token punctuation">&lt;</span>dependency</span><span
                    class="token punctuation">&gt;</span></span>
   <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>groupId</span><span
           class="token punctuation">&gt;</span></span>com.typesafe.akka<span class="token tag"><span class="token tag"><span
                        class="token punctuation">&lt;/</span>groupId</span><span class="token punctuation">&gt;</span></span>
   <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>artifactId</span><span
           class="token punctuation">&gt;</span></span>akka-actor_2.11<span class="token tag"><span
                        class="token tag"><span class="token punctuation">&lt;/</span>artifactId</span><span
                        class="token punctuation">&gt;</span></span>
   <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>version</span><span
           class="token punctuation">&gt;</span></span>>2.5.31<span class="token tag"><span class="token tag"><span
                        class="token punctuation">&lt;/</span>version</span><span class="token punctuation">&gt;</span></span>
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>dependency</span><span class="token punctuation">&gt;</span></span></code></pre>
        </div>
        <p>&#8195;</p>
        <h2><strong>ActorSystem& Dispatchers</strong></h2>
        <p>&#8201;</p>
        <p>
        <ul class="ul-style">
            <li class="list-style"> An ActorSystem is the entry point for creating and looking up actors.</li>
            <li class="list-style"> A Dispatcher controls timeshare for each actor as well as properties about the
                underlying thread pool
            </li>
            <li class="list-style"> configurable via application.conf</li>
            <li class="list-style"> ActorSystem actorSystem = ActorSystem.create();</li>
        </ul>
        </p>
        <p>&#8195;</p>
        <h2><strong>Props and ActorRed</strong></h2>
        <p>&#8201;</p>
        <p>
        <ul class="ul-style">
            <li class="list-style"> Props provides configuration options for an actor including constructor parameters
            </li>
            <li class="list-style"> ActorRef provides a handler to the Actor</li>
            <li class="list-style"> ActorRef simpleActor =
                actorSystem.actorOf(Props.create(SimpleActor.class),"simple-actor")
            </li>
        </ul>
        </p>
        <!--Start oc code section -->
        <p>&#8195;</p>
        <h2><strong>SimpleActor Class example</strong></h2>
        <p>&#8195;</p>
        <div class="code_section" spellcheck="false">
            <span class="java_keyword">import</span> akka.actor.UntypedActor;
            <span class="java_keyword">import</span> akka.event.Logging;
            <span class="java_keyword">import</span> akka.event.LoggingAdapter;

            <span class="java_keyword">public class</span> SimpleActor <span class="java_keyword">extends</span> UntypedActor {

                <span class="java_keyword">private</span> LoggingAdapter log = Logging.getLogger(getContext().system(), this);
                <span class="java_keyword">private String</span> greeting = <span class="java_string">"World"</span>;

                <span class="java_function">@Override</span>
                <span class="java_keyword">public void</span> <span class="java_function">onReceive</span>(Object message) <span class="java_keyword">throws Throwable</span> {

                log.info(<span class="java_string">"Received Message: "</span> + message);
                log.info(<span class="java_string">"Running in thread: "</span> + Thread.currentThread().getName());

                if(<span class="java_string">"Hello"</span>.equals(message)) {
                // replies back to sender
                getSender().<span class="java_function">tell</span>(greeting, getSelf());
                    }
                }

                <span class="java_keyword">public String</span> <span class="java_function">getGreeting()</span> {
                <span class="java_keyword">return</span> <span class="java_function">this.</span>greeting;
                }
            }
        </div>
        <p>&#8201;</p>
        <!--End oc code section -->
        <p>Below is the testing function that will test the above code:</p>
        <!--Start oc code section -->
        <p>&#8201;</p>
        <div class="code_section" spellcheck="false">
            <span class="java_keyword">import</span> akka.actor.ActorRef;
            <span class="java_keyword">import</span> akka.actor.ActorSystem;
            <span class="java_keyword">import</span> akka.actor.Props;

            <span class="java_keyword">public class</span> SimpleActorApp {

                <span class="java_keyword">public static </span>void <span class="java_function"> main</span>(<span class="java_keyword">String</span>[] args) {

                // Entry point
                ActorSystem actorSystem = ActorSystem.<span class="java_function">create</span>();

                // Creates a SimpleActor and returns reference to it
                ActorRef simpleActor = actorSystem.<span class="java_function">actorOf</span>(Props.<span class="java_function">create</span>(SimpleActor.class), <span class="java_string">"simple-actor"</span>);

                // Sends a message to the actor
                simpleActor.<span class="java_function">tell</span>(<span class="java_string">"Hello"</span>, simpleActor);
                }
            }
        </div>
        <p>&#8201;</p>
        <!--End oc code section -->
        <!--start of the out put data-->
        <h2><strong>Program output</strong></h2>
        <p>&#8201;</p>
        <div class="code_section" spellcheck="false">
            <p>
                [INFO] [05/17/2020 19:24:06.914]  [akka://default/user/simple-actor] Received Message: Hello
                [INFO] [05/17/2020 19:24:06.915]  [akka://default/user/simple-actor] Running in thread: default-akka.actor.default-dispatcher-3
                [INFO] [05/17/2020 19:24:06.915]  [akka://default/user/simple-actor] Received Message: World
                [INFO] [05/17/2020 19:24:06.915]  [akka://default/user/simple-actor] Running in thread: default-akka.actor.default-dispatcher-3

                Process finished with exit code 130 (interrupted by signal 2: SIGINT)
            </p>
        </div>
        <p>&#8201;</p>
        <h2><strong>Code analysis</strong></h2>
        <p>&#8201;</p>
        <p> The time complexity of the solution is O(mn) and ausilliary space used by the program is O(1). The problem
            can in fact be solved in linear time and constant space.

        </p>
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
                html += "<a data-control-name=\"read_activity\" href=\"\" id=\"ember91\" class=\"reader-author-info__total-articles link-without-visited-state ember-view\">" + data.publicationsCount + " articles</a>";
                html += "<button data-control-name=\"actor_follow_toggle\" aria-pressed=\"false\" aria-label=\"Follow\"id=\"ember64\"class=\"follow reader-author-info__follow-button artdeco-button artdeco-button--secondary ml2 ember-view\">";
                html += "<li-icon aria-hidden=\"true\" type=\"plus-icon\" class=\"artdeco-button__icon\" size=\"small\">";
                html += "<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 16 16\" data-supported-dps=\"16x16\" fill=\"currentColor\" width=\"16\" height=\"16\" focusable=\"false\">";
                html += "<path d=\"M14 9H9v5H7V9H2V7h5V2h2v5h5v2z\"></path> </svg> </li-icon> <span aria-hidden=\"true\">Follow</span> </button>";
                $("#articleCount").html(html);
            },
            error: function (e) {
                var json = "<h4>Ajax Response</h4><pre>" + e.responseText + "</pre>";
                $('#articleCount').html(json);
                console.log("ERROR : ", e);
            }
        });
    }

    function searchByKeyWords(search) {

        jQuery.ajax({
            success: function (data) {
                top.location.href = '/welcome/' + search.search;
            }
        });
        return false;
    }
</script>

</html>