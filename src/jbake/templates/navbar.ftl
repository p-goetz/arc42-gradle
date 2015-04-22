<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">arc42 with Gradle</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.html">Startseite</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                       aria-expanded="false">arc42 Dokumentation <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                    <#list pages as page>
                        <#if (page.status == "published")>
                            <li><a href="${page.uri}">${page.title}</a></li>
                        </#if>
                    </#list>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="lizenz.html">Lizenz</a></li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</nav>
