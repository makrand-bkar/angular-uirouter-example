<!doctype html>
<!-- Our myApp module defined here -->
<html lang="en" >
  <head>
        <meta name="layout" content="main"/>


    <!-- using twitter bootstrap, but of course -->
    <!-- <link rel="stylesheet" type="text/css" href="bootstrap.min.css"> -->
    <!-- styles for ng-animate are located here -->
    <!-- <link rel="stylesheet" type="text/css" href="styles.css"> -->

  

    <!-- could easily use a custom property of the state here instead of 'name' -->
  </head>
  <body>
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner"><div class="container">

        <!-- ui-sref is a great directive for linking a state location with an anchor link.
             You should almost always use ui-sref instead of href on your links when you want
             then to navigate to a state. When this link is clicked it will take the application
             to the 'home' state. Behind the scenes the directive also adds the correct href attr
             and url. -->
        <a class="brand" ui-sref="home">Login</a>
        <ul class="nav">

        <!-- Here you can see ui-sref in action again. Also notice the use of $state.includes, which
             will set the links to 'active' if, for example on the first link, 'contacts' or any of
             its descendant states are activated. -->
          <li ng-class="{ active: $state.includes('contacts') }"><a ui-sref="contacts.list">Contacts</a></li>
          <li ng-class="{ active: $state.includes('about') }"><a ui-sref="about">About</a></li>
        </ul>

        <!-- Here is a named ui-view. ui-views don't have to be named, but we'll be populate this
             on from various different child states and we want a name to help us target. -->
        <p ui-view="hint" class="navbar-text pull-right"></p>
      </div></div>
    </div>

    <!-- Here is the main ui-view (unnamed) and will be populate by its immediate children's templates
         unless otherwise explicitly named views are targeted. It's also employing ng-animate. -->
    <div ui-view class="container" style="margin-top:60px" ng-animate="{enter:'fade-enter'}"></div>


    <hr>
    <pre>
      <!-- Here's some values to keep an eye on in the sample in order to understand $state and $stateParams -->
      $state = {{$state.current.name}}
      $stateParams = {{$stateParams}}
      $state full url = {{ $state.$current.url.source }}
      <!-- $state.$current is not a public api, we are using it to
           display the full url for learning purposes-->
    </pre>
    <script>document.write('<script src="http://' + (location.host || 'localhost').split(':')[0] + ':35729/livereload.js?snipver=1"></' + 'script>')</script>
      <!-- Include both angular.js and angular-ui-router.js-->
   
        <!-- state.js takes care of all the state configuration, where all the magic's at-->
    <!-- // <script src="states.js"></script> -->

    <!-- module.js declares the myApp module and adds items to $rootScope-->
    <!-- factory.js defines a 'contacts' http service and a 'utils' global functions service -->
    <!-- // <script src="factory.js"></script> -->
  </body>
</html>
