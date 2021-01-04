module Web.View.Layout (defaultLayout, Html) where

import IHP.ViewPrelude
import IHP.Environment
import qualified Text.Blaze.Html5            as H
import qualified Text.Blaze.Html5.Attributes as A
import Generated.Types
import IHP.Controller.RequestContext
import Web.Types
import Web.Routes

import Application.Helper.View

defaultLayout :: Html -> Html
defaultLayout inner = H.docTypeHtml ! A.lang "en" $ [hsx|
<head>
    {metaTags}

    {stylesheets}
    {scripts}

    <title>App</title>
</head>
<body>
    <div class="bg-gray-100 overflow-x-hidden">
        {navbar}
        <div class="px-6 py-8 min-h-screen">
            {renderFlashMessages}
            {inner}
        </div>
        {footer}
    </div>
</body>
|]

navbar :: Html
navbar = [hsx|
<nav class="bg-gray-700 p-4 flex justify-between items-center">
    <!--left side-->
    <div class="flex items-center">
        <img
        src="https://cdn3.iconfinder.com/data/icons/complete-set-icons/512/twitter2512x512.png"
        alt="logo" width="50" class="mr-2"/>
        
        <!--<a class="inline-block p-3 text-red-50 hover:text-red-400 transition ease-in duration-150" href="/">Callout Bot</a>-->
        <a class="inline-block p-3 text-red-50 hover:text-red-400 transition ease-in duration-150" href={PostsAction}>Posts</a>
        <!--<ul class="navbar-nav mr-auto">-->
            <!--<li class={classes ["nav-item", ("active", isActivePath ("/Posts" :: Text))]}>-->
                <!--<a class="nav-link" href={PostsAction}>Posts</a>-->
            <!--</li>-->
            <!--<li class={classes ["nav-item", ("active", isActivePath ("/NewPost" :: Text))]}>-->
                <!--<a class="nav-link" href={NewPostAction}>New Post</a>-->
            <!--</li>-->
        <!--</ul>-->
            
    </div>

    <!--right side -->
    <div>
        {userSessionButton}
    </div>
</nav>    
|]
    --where userSessionButton = logoutButtonHtml
    where userSessionButton = case currentUserOrNothing of 
                                Just user -> logoutButtonHtml user
                                Nothing -> loginButtonHtml


footer :: Html
footer = [hsx|
    <footer class="px-6 py-2 bg-gray-800 text-gray-100">
        <div class="flex flex-col justify-between items-center container mx-auto md:flex-row"><a href="#"
                class="text-2xl font-bold">Callout Bot</a>
            <p class="mt-2 md:mt-0">All rights reserved 2020.</p>
            <div class="flex -mx-2 mt-4 mb-2 md:mt-0 md:mb-0"><a href="#"
                    class="mx-2 text-gray-100 hover:text-gray-400"><svg viewBox="0 0 512 512"
                        class="h-4 w-4 fill-current">
                    <path
                        d="M444.17,32H70.28C49.85,32,32,46.7,32,66.89V441.61C32,461.91,49.85,480,70.28,480H444.06C464.6,480,480,461.79,480,441.61V66.89C480.12,46.7,464.6,32,444.17,32ZM170.87,405.43H106.69V205.88h64.18ZM141,175.54h-.46c-20.54,0-33.84-15.29-33.84-34.43,0-19.49,13.65-34.42,34.65-34.42s33.85,14.82,34.31,34.42C175.65,160.25,162.35,175.54,141,175.54ZM405.43,405.43H341.25V296.32c0-26.14-9.34-44-32.56-44-17.74,0-28.24,12-32.91,23.69-1.75,4.2-2.22,9.92-2.22,15.76V405.43H209.38V205.88h64.18v27.77c9.34-13.3,23.93-32.44,57.88-32.44,42.13,0,74,27.77,74,87.64Z">
                    </path>
                </svg></a><a href="#" class="mx-2 text-gray-100 hover:text-gray-400"><svg viewBox="0 0 512 512"
                    class="h-4 w-4 fill-current">
                    <path
                        d="M455.27,32H56.73A24.74,24.74,0,0,0,32,56.73V455.27A24.74,24.74,0,0,0,56.73,480H256V304H202.45V240H256V189c0-57.86,40.13-89.36,91.82-89.36,24.73,0,51.33,1.86,57.51,2.68v60.43H364.15c-28.12,0-33.48,13.3-33.48,32.9V240h67l-8.75,64H330.67V480h124.6A24.74,24.74,0,0,0,480,455.27V56.73A24.74,24.74,0,0,0,455.27,32Z">
                    </path>
                </svg></a><a href="#" class="mx-2 text-gray-100 hover:text-gray-400"><svg viewBox="0 0 512 512"
                    class="h-4 w-4 fill-current">
                    <path
                        d="M496,109.5a201.8,201.8,0,0,1-56.55,15.3,97.51,97.51,0,0,0,43.33-53.6,197.74,197.74,0,0,1-62.56,23.5A99.14,99.14,0,0,0,348.31,64c-54.42,0-98.46,43.4-98.46,96.9a93.21,93.21,0,0,0,2.54,22.1,280.7,280.7,0,0,1-203-101.3A95.69,95.69,0,0,0,36,130.4C36,164,53.53,193.7,80,211.1A97.5,97.5,0,0,1,35.22,199v1.2c0,47,34,86.1,79,95a100.76,100.76,0,0,1-25.94,3.4,94.38,94.38,0,0,1-18.51-1.8c12.51,38.5,48.92,66.5,92.05,67.3A199.59,199.59,0,0,1,39.5,405.6,203,203,0,0,1,16,404.2,278.68,278.68,0,0,0,166.74,448c181.36,0,280.44-147.7,280.44-275.8,0-4.2-.11-8.4-.31-12.5A198.48,198.48,0,0,0,496,109.5Z">
                    </path>
                </svg></a>
            </div>
        </div>
    </footer>
|]

logoutButtonHtml :: User -> Html
logoutButtonHtml user = [hsx|
    <a class="hidden md:inline-block ml-auto mr-3 text-red-50 hover:text-red-400 transition ease-in duration-100" href={ShowUserAction (get #id user)}>Welcome, {get #firstName user}</a>
    <a class="inline-block mr-0 text-red-100 bg-red-500 px-4 py-2 rounded hover:bg-red-400 hover:text-red-50 transition ease-in duration-100 js-delete js-delete-no-confirm"
       href={DeleteSessionAction}>Logout</a>
|]

loginButtonHtml :: Html
loginButtonHtml = [hsx|
    <a class="mr-3 ml-auto text-red-50 hover:text-red-400 transition ease-in duration-100" href={NewUserAction}>Sign Up</a>
    <a class="inline-block mr-0 text-red-100 bg-red-500 px-4 py-2 rounded hover:bg-red-400 hover:text-red-50 transition ease-in duration-100"
    href={NewSessionAction}>Login</a>
|]

stylesheets :: Html
stylesheets = do
    when isDevelopment [hsx|
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
        <script src="/vendor/flatpickr.js"></script>
        <script src="/helpers.js"></script>
        <script src="/vendor/morphdom-umd.min.js"></script>
        <script src="/app.js"></script>
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
