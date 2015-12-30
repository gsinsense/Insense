<#macro layout pagetitle>
    <!DOCTYPE html>
    <html ng-app="insense-app">
        <@pagehead pagetitle/>
        <@pagebody/>
    </html>
</#macro>

<#macro pagehead pagetitle>
    <head>
        <@metatags pagetitle/>
        <@linktags/>
    </head>
</#macro>

<#macro metatags pagetitle>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <#if _csrf??>
        <meta name="_csrf" content="${_csrf.token!""}">
        <meta name="_csrf_header" content="${_csrf.headerName!""}">
    </#if>
    <title>${pagetitle!""}</title>
    </#macro>

<#macro favicon>
</#macro>

<#macro linktags>
    <@favicon/>
    <script type="text/javascript" src="<@spring.url '/libs/jquery/dist/jquery.min.js' />"></script>
    <link rel="stylesheet" href="<@spring.url '/libs/bootstrap/dist/css/bootstrap.min.css'/>">
    <link rel="stylesheet" href="<@spring.url '/libs/font-awesome/css/font-awesome.min.css'/>">
    <link rel="stylesheet" href="<@spring.url '/libs/insense/css/animate.css'/>">
    <link rel="stylesheet" href="<@spring.url '/libs/insense/css/style.css'/>">
</#macro>

<#macro pagebody>
    <body class="top-navigation">
        <div class="pace  pace-inactive">
            <div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
                <div class="pace-progress-inner"></div>
            </div>
            <div class="pace-activity"></div>
        </div>
        <div id="wrapper">
            <div id="page-wrapper" class="gray-bg">
                <@navtag/>
                <div class="wrapper wrapper-content">
                    <@bodycontent/>
                </div>
                <div class="footer">
                    <@footer/>
                </div>
            </div>
        </div>
        <@bodyscripttag/>
    </body>
</#macro>

<#macro bodycontent>
</#macro>

<#macro bodyscripttag>
    <script type="text/javascript" src="<@spring.url '/libs/jquery/dist/jquery.min.js' />"></script>
    <script type="text/javascript" src="<@spring.url '/libs/bootstrap/dist/js/bootstrap.min.js' />"></script>
    <script type="text/javascript" src="<@spring.url '/libs/angular/angular.min.js'/>"></script>
    <script type="text/javascript" src="<@spring.url '/libs/angular-ui-router/release/angular-ui-router.min.js'/>"></script>
    <script type="text/javascript" src="<@spring.url '/libs/insense/js/plugins/metisMenu/jquery.metisMenu.js'/>"></script>
    <script type="text/javascript" src="<@spring.url '/libs/insense/js/plugins/slimscroll/jquery.slimscroll.min.js'/>"></script>
    <script type="text/javascript" src="<@spring.url '/libs/insense/js/inspinia.js'/>"></script>
    <script type="text/javascript" src="<@spring.url '/libs/insense/js/plugins/flot/jquery.flot.js'/>"></script>
    <script type="text/javascript" src="<@spring.url '/libs/insense/js/plugins/flot/jquery.flot.tooltip.min.js'/>"></script>
    <script type="text/javascript" src="<@spring.url '/libs/insense/js/plugins/flot/jquery.flot.resize.js'/>"></script>
    <script type="text/javascript" src="<@spring.url '/libs/insense/js/plugins/pace/pace.min.js'/>"></script>
    <script type="text/javascript" src="<@spring.url '/app/app.module.js'/>"></script>
    <script type="text/javascript" src="<@spring.url '/app/app.config.js'/>"></script>
    <@bodyscript/>
</#macro>

<#macro bodyscript>
</#macro>

<#macro navtag>
    <div class="row border-bottom white-bg">
        <nav class="navbar navbar-static-top" role="navigation">
            <div class="navbar-header">
                <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <i class="fa fa-reorder"></i>
                </button>
                <a href="#" class="navbar-brand">Insense</a>
            </div>
            <div class="navbar-collapse collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a aria-expanded="false" role="button" href="#"> Dashboard</a>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Menu item <span class="caret"></span></a>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                            <li><a href="">Menu item</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-top-links navbar-right">
                    <li>
                        <a href="#">
                            <i class="fa fa-sign-out"></i> Log out
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</#macro>

<#macro footer>
    <div>
        <strong>Copyright</strong> Example Company &copy; ${.now?string("YYYY")}
    </div>
</#macro>
