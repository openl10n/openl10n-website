<!DOCTYPE HTML>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>OpenLocalization (openl10n)</title>
  <meta name="description" content="Open-source translation management web-app">

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Custom styles for this template -->
  <link href="/assets/css/main.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->

  <link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700' rel='stylesheet' type='text/css'>
  <meta name="google-site-verification" content="olKGwsetC0ZHP8zDLPcQ6hZdJDuce5d5TzHJPTqTTTk" />
</head>
<body>
  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>

        <a class="navbar-brand" href="/">
          OpenLocalization
        </a>
      </div>

      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
          <li>
            <a href="http://docs.openl10n.io">
              Getting started
            </a>
          </li>
          <li>
            <a href="/demo">
              Demo
            </a>
          </li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>

  {% autoescape false %}{{ contents }}{% endautoescape %}

  <footer class="footer" role="contentinfo">
    <div class="container">
      <p>
        Developed with &nbsp;❤&nbsp; by <a href="http://twitter.com/mattketmo" target="_blank">@MattKetmo</a>.
      </p>

      <p>Code licensed under <a href="https://github.com/openl10n/openl10n/blob/master/LICENSE" target="_blank">MIT</a></p>

      <ul class="list-inline">
        <li>Currently in v0.1</li>
        <li><a href="https://github.com/openl10n/openl10n" target="_blank">GitHub</a></li>
        <li><a href="http://docs.openl10n.io/">Documentation</a></li>
        <li><a href="https://github.com/openl10n/openl10n/issues?state=open" target="_blank">Issues</a></li>
        <li><a href="https://github.com/openl10n/openl10n/releases" target="_blank">Releases</a></li>
      </ul>
    </div>
  </footer>

  <script src="/assets/js/main.js"></script>
  <script>
    new WOW().init();
  </script>

  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-23657373-4', 'openl10n.io');
    ga('send', 'pageview');
  </script>
</body>
</html>
