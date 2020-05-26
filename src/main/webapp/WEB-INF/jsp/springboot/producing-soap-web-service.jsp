<html lang="en">
<head>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Producing a SOAP web service</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/navbar-fixed/">

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!--have Ajx work -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>

<body onload="fire_ajax_submit(search)">

<-- Start of header -->
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <br>&#8195;</br>
    <br>&#8195;</br>
    <a class="navbar-brand" href="/welcome"><h1><strong>Home</strong></h1></a>
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

<main role="main" class="container">
    <div class="jumbotron_article">
        <!--Aticle title-->
        <h1 class="reader-article-header__title t-40 t-black t-normal pv4">Producing a SOAP web service&nbsp;</h1>
        <!-- Article publisher date-->
        <br>
        <ul class="reader-article-header__meta t-14 t-black--light t-normal mv4">
            <li>
                <time class="reader-article-header__publish-date">Published on May 25, 2020</time>
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
        <h2><strong>What will we build</strong></h2>
        <p>&#8201;</p>
        <p>
            You will build a server that exposes data from various European countries by using a WSDL-based SOAP web service.
        </p>
        <p>&#8195;</p>
        <h2><strong>Springboot web starter dependency</strong></h2>
        <p>&#8201;</p>
        <div class="code_section" spellcheck="false">
            <pre class=" language-markup"><code class=" language-markup"><span class="token tag"><span
                    class="token tag"><span class="token punctuation">&lt;</span>dependency</span><span
                    class="token punctuation">&gt;</span></span>
   <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>groupId</span><span
           class="token punctuation">&gt;</span></span>org.springframework.boot<span class="token tag"><span class="token tag"><span
                        class="token punctuation">&lt;/</span>groupId</span><span class="token punctuation">&gt;</span></span>
   <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>artifactId</span><span
           class="token punctuation">&gt;</span></span>spring-boot-starter-web<span class="token tag"><span
                        class="token tag"><span class="token punctuation">&lt;/</span>artifactId</span><span
                        class="token punctuation">&gt;</span></span>
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>dependency</span><span class="token punctuation">&gt;</span></span></code></pre>
        </div>
        <p>&#8195;</p>
        <h2><strong>Springboot web-service dependency</strong></h2>
        <p>&#8201;</p>
        <div class="code_section" spellcheck="false">
            <pre class=" language-markup"><code class=" language-markup"><span class="token tag"><span
                    class="token tag"><span class="token punctuation">&lt;</span>dependency</span><span
                    class="token punctuation">&gt;</span></span>
   <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>groupId</span><span
           class="token punctuation">&gt;</span></span>org.springframework.boot<span class="token tag"><span class="token tag"><span
                        class="token punctuation">&lt;/</span>groupId</span><span class="token punctuation">&gt;</span></span>
   <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>artifactId</span><span
           class="token punctuation">&gt;</span></span>spring-boot-starter-web-service<span class="token tag"><span
                        class="token tag"><span class="token punctuation">&lt;/</span>artifactId</span><span
                        class="token punctuation">&gt;</span></span>
<span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>dependency</span><span class="token punctuation">&gt;</span></span></code></pre>
        </div>
        <p>&#8195;</p>
        <!--End oc code section -->
        <!--start of the out put data-->
        <h2><strong>Configuration class</strong></h2>
        <p>&#8201;</p>
        <div class="code_section" spellcheck="false">
            <span class="java_keyword">import</span> org.springframework.boot.web.servlet.ServletRegistrationBean;
            <span class="java_keyword">import</span> org.springframework.context.ApplicationContext;
            <span class="java_keyword">import</span> org.springframework.context.annotation.Bean;
            <span class="java_keyword">import</span> org.springframework.context.annotation.Configuration;
            <span class="java_keyword">import</span> org.springframework.core.io.ClassPathResource;
            <span class="java_keyword">import</span> org.springframework.ws.config.annotation.EnableWs;
            <span class="java_keyword">import</span> org.springframework.ws.config.annotation.WsConfigurerAdapter;
            <span class="java_keyword">import</span> org.springframework.ws.transport.http.MessageDispatcherServlet;
            <span class="java_keyword">import</span> org.springframework.ws.wsdl.wsdl11.DefaultWsdl11Definition;
            <span class="java_keyword">import</span> org.springframework.xml.xsd.SimpleXsdSchema;
            <span class="java_keyword">import</span> org.springframework.xml.xsd.XsdSchema;

            <span class="java_annotation">@EnableWs</span>
            <span class="java_annotation">@Configuration</span>
            <span class="java_keyword">public class</span> WebServiceConfig <span class="java_keyword">extends</span> WsConfigurerAdapter {
            <span class="java_annotation">@Bean</span>
            <span class="java_keyword">public</span> ServletRegistrationBean <span class="java_function">messageDispatcherServlet</span>(ApplicationContext applicationContext) {

                    MessageDispatcherServlet servlet = <span class="java_keyword">new</span> MessageDispatcherServlet();
                    servlet.<span class="java_function">setApplicationContext</span>(applicationContext);
                    servlet.<span class="java_function">setTransformWsdlLocations</span>(true);
                    <span class="java_keyword">return new</span> ServletRegistrationBean(servlet, <span class="java_string">"/ws/*"</span>);
                }

            <span class="java_annotation">@Bean</span>(name = <span class="java_string">"countries"</span>)
            <span class="java_keyword">public</span> DefaultWsdl11Definition <span class="java_function">defaultWsdl11Definition</span>(XsdSchema countriesSchema) {

                    DefaultWsdl11Definition wsdl11Definition = <span class="java_keyword">new</span> DefaultWsdl11Definition();
                    wsdl11Definition.<span class="java_function">setPortTypeName</span>(<span class="java_string">"CountriesPort"</span>);
                    wsdl11Definition.<span class="java_function">setLocationUri</span>(<span class="java_string">"/ws"</span>);
                    wsdl11Definition.<span class="java_function">setTargetNamespace</span>(<span class="java_string">"http://spring.io/guides/gs-producing-web-service"</span>);
                    wsdl11Definition.<span class="java_function">setSchema</span>(countriesSchema);
                    <span class="java_keyword">return</span> wsdl11Definition;
                }

            <span class="java_annotation">@Bean</span>
            <span class="java_keyword">public</span> XsdSchema <span class="java_function">countriesSchema</span>() {

                    <span class="java_keyword">return new</span> SimpleXsdSchema(new ClassPathResource(<span class="java_string">"countries.xsd"</span>));
                }
            }
        </div>
        <p>&#8201;</p>
        <h2><strong>SOAP endpoint object</strong></h2>
        <p>&#8201;</p>
        <div class="code_section" spellcheck="false">
            <span class="java_keyword">import</span> org.springframework.beans.factory.annotation.Autowired;
            <span class="java_keyword">import</span> org.springframework.ws.server.endpoint.annotation.Endpoint;
            <span class="java_keyword">import</span> org.springframework.ws.server.endpoint.annotation.PayloadRoot;
            <span class="java_keyword">import</span> org.springframework.ws.server.endpoint.annotation.RequestPayload;
            <span class="java_keyword">import</span> org.springframework.ws.server.endpoint.annotation.ResponsePayload;
            <span class="java_keyword">import</span> io.spring.guides.gs_producing_web_service.GetCountryRequest;
            <span class="java_keyword">import</span> io.spring.guides.gs_producing_web_service.GetCountryResponse;

            <span class="java_annotation">@Endpoint</span>
            <span class="java_keyword">public class</span> CountryEndpoint {
            <span class="java_keyword">private static final String</span> NAMESPACE_URI = <span class="java_string">"http://spring.io/guides/gs-producing-web-service"</span>;

            <span class="java_keyword">private</span> CountryRepository countryRepository;

            <span class="java_annotation">@Autowired</span>
            <span class="java_keyword">public</span> <span class="java_function">CountryEndpoint</span>(CountryRepository countryRepository) {

                    <span class="java_keyword">this</span>.countryRepository = countryRepository;
             }

            <span class="java_annotation">@PayloadRoot</span>(namespace = NAMESPACE_URI, localPart = <span class="java_string">"getCountryRequest"</span>)
            <span class="java_annotation">@ResponsePayload</span>
            <span class="java_keyword">public</span> GetCountryResponse <span class="java_function">getCountry</span>( <span class="java_annotation">@RequestPayload</span> GetCountryRequest request) {

                    GetCountryResponse response = <span class="java_keyword">new</span> GetCountryResponse();
                    response.<span class="java_function">setCountry</span>(countryRepository.<span class="java_function">findCountry</span>(request.<span class="java_function">getName()</span>));
                     <span class="java_keyword">return</span> response;
                }
            }
        </div>
    </div>

        <p>&#8201;</p>

    </div>
</main>
<p>&#8201;</p>
</body>





<script>

    $(document).ready(function () {
        $(".Java-Topics").on("click", function(evt) {
            evt.preventDefault();
            var search = {};
            search["tag"]='java';
            fire_ajax_submit(search);
        });

        $(".Springboot-Topics").on("click", function(evt) {
            evt.preventDefault();
            var search = {};
            search["tag"]='springboot';
            fire_ajax_submit(search);
        });

        $(".Interviews-Topics").on("click", function(evt) {
            evt.preventDefault();
            var search = {};
            search["tag"]='interviews';
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
                html +="<a data-control-name=\"read_activity\" href=\"/welcome\" id=\"ember91\" class=\"reader-author-info__total-articles link-without-visited-state ember-view\">"+data.publicationsCount+" articles</a>";
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