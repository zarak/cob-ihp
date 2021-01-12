module Admin.View.Layout (defaultLayout, Html) where

import IHP.ViewPrelude
import IHP.Environment
import qualified Text.Blaze.Html5            as H
import qualified Text.Blaze.Html5.Attributes as A
import Generated.Types
import IHP.Controller.RequestContext
import Admin.Types
import Admin.Routes

import Application.Helper.View
import IHP.LoginSupport.Helper.Controller (currentAdminOrNothing)

defaultLayout :: Html -> Html
defaultLayout inner = H.docTypeHtml ! A.lang "en" $ [hsx|
<head>
    {metaTags}

    {stylesheets}
    {scripts}

    <title>App</title>
</head>
<body>
    {navbar}
    <div class="container mt-4">
        {renderFlashMessages}
        {inner}
    </div>
</body>
|]

navbar :: Html
navbar = [hsx|
<nav class="navbar navbar-light bg-light navbar-expand-lg">
    <a class="navbar-brand" href={UsersAction}>Blog</a>
    <ul class="navbar-nav mr-auto">
    </ul>
    {adminSessionButton}
</nav>    
|]
    --where userSessionButton = logoutButtonHtml
    where adminSessionButton = case currentAdminOrNothing of 
                                Just admin -> logoutButtonHtml admin
                                Nothing -> loginButtonHtml


logoutButtonHtml :: Admin -> Html
logoutButtonHtml user = [hsx|
    <a class="ml-auto mr-3" href={ShowAdminAction (get #id user)}>Welcome</a>
    <a class="btn btn-outline-primary mr-0 js-delete js-delete-no-confirm"
       href={DeleteSessionAction}>Logout</a>
|]

loginButtonHtml :: Html
loginButtonHtml = [hsx|
    <a class="mr-3 ml-auto" href={NewAdminAction}>Sign Up</a>
    <a class="btn btn-primary mr-0" href={NewSessionAction}>Login</a>
|]

stylesheets :: Html
stylesheets = do
    when isDevelopment [hsx|
        <link rel="stylesheet" href="/vendor/bootstrap.min.css"/>
        <link rel="stylesheet" href="/vendor/flatpickr.min.css"/>
        <link rel="stylesheet" href="/app.css"/>
    |]
    when isProduction [hsx|
        <link rel="stylesheet" href="/prod.css"/>
    |]

scripts :: Html
scripts = do
    when isDevelopment [hsx|
        <script id="livereload-script" src="/livereload.js"></script>
        <script src="/vendor/jquery-3.2.1.slim.min.js"></script>
        <script src="/vendor/timeago.js"></script>
        <script src="/vendor/popper.min.js"></script>
        <script src="/vendor/bootstrap.min.js"></script>
        <script src="/vendor/flatpickr.js"></script>
        <script src="/helpers.js"></script>
        <script src="/vendor/morphdom-umd.min.js"></script>
    |]
    when isProduction [hsx|
        <script src="/prod.js"></script>
    |]


metaTags :: Html
metaTags = [hsx|
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta property="og:title" content="App"/>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="TODO"/>
    <meta property="og:description" content="TODO"/>
|]
