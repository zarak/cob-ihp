module Web.View.Posts.Index where
import Web.View.Prelude

data IndexView = IndexView { posts :: [Post], numPosts :: Int, page :: Int }

instance View IndexView where
    html IndexView { .. } = [hsx|
<div class="flex-row justify-between container mx-auto">
        <!--<h1>Index <a href={pathTo NewPostAction} class="btn btn-primary ml-4">+ New</a></h1>-->

        <!--for testing only-->
        <div>
            <a href={NewPostAction}>create new post</a>            
        </div>

        <div class="w-full">
            {forEach posts renderPost}
        </div>
        {renderPagination numPosts page}
</div>
    |]

renderPost post = [hsx|
                <div class="mt-6">
                    <div class="px-10 py-6 bg-white rounded-lg shadow-md">
                        <div class="flex justify-between items-center"><span
                             class="font-light text-gray-600">{get #createdAt post |> timeAgo}</span><a href="#"
                                class="px-2 py-1 bg-gray-600 text-gray-100
                                font-bold rounded hover:bg-gray-500">Score {get #toxicityScore post}</a>
                        </div>
                        <div class="mt-2">
                            <!--<a href="#" class="text-2xl-->
                                <!--text-gray-700 font-bold hover:underline">Title-->
                            <!--</a>-->
                            <p class="mt-2 text-gray-600">{get #body post}</p>
                        </div>
                        <div class="flex justify-between items-center mt-4"><a href={ShowPostAction (get #id post)}
                                class="text-blue-500 hover:underline">Discussion</a>
                            <div><a href="#" class="flex items-center"><img
                                        src="https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=731&amp;q=80"
                                        alt="avatar" class="mx-4 w-10 h-10 object-cover rounded-full hidden sm:block">
                                    <h1 class="text-gray-700 font-bold
                                        hover:underline">Author</h1>
                                </a></div>
                        </div>
                    </div>
                </div>
    |]

renderPagination numPosts page =
    let base = "mx-1 px-3 py-2 bg-white rounded-md font-medium"
        cursorNotAllowed = base <> "text-gray-500 cursor-not-allowed":: Text
        cursorAllowed = base <> "text-gray-700 hover:bg-blue-500 hove:text-white rounded-md" :: Text

        (q, r) = numPosts `quotRem` 2
        lastPage = q + (if r == 0 then 0 else 1)

        -- Show at least @numButtons@ clickable buttons
        numButtons = 5
        startPage = min (max 1 (page - 2)) (lastPage - numButtons + 1)
        endPage = min (max (page + 2) numButtons) lastPage

        prevPageLink = if page == 1 then "" else pathTo PostsAction <> "?page=" <> show (page - 1)
        prevButtonActive = if page == 1 then cursorNotAllowed else cursorAllowed

        nextPageLink = if page == lastPage then "" else pathTo PostsAction <> "?page=" <> show (page + 1)
        nextButtonActive = if page == lastPage then cursorNotAllowed else cursorAllowed
    in 
    [hsx|
                <div class="mt-8">
                    <div class="flex">
                        <a href={prevPageLink}
                           class={prevButtonActive}>
                            previous
                        </a>
                    
                        {forEach [startPage..endPage] renderPageLink}
                    
                        <a href={nextPageLink}
                           class={nextButtonActive}>
                            next
                        </a>
                    </div>
                </div>
    |]

renderPageLink num = [hsx|
    <a href={pathTo PostsAction <> "?page=" <> show num} class="mx-1 px-3 py-2 bg-white text-gray-700 font-medium hover:bg-blue-500 hover:text-white rounded-md">
        {show num}
    </a>
    |]

