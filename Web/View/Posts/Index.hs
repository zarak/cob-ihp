module Web.View.Posts.Index where
import Web.View.Prelude

data IndexView = IndexView { posts :: [Post] }

instance View IndexView where
    html IndexView { .. } = [hsx|
<div class="flex-row justify-between container mx-auto">
        <!--<h1>Index <a href={pathTo NewPostAction} class="btn btn-primary ml-4">+ New</a></h1>-->

        <!--for testing only-->
        <div>
            <a href={NewPostAction}>create new post</a>            
        </div>

        <div class="w-full">
            {forEach posts renderPost2}
        </div>
</div>
{renderPagination}
    |]


renderPost post = [hsx|
<a href={ShowPostAction (get #id post)}>
<div class="my-4 p-2 bg-red-50 dark:bg-gray-900 rounded shadow-lg flex items-center justify-center
    w-full hover:bg-red-100 transition ease-in 30">
  <div class="px-5 py-4 dark:bg-gray-800 rounded-lg object-contain w-full">
    <div class="flex mb-4">
      <div class="ml-2 mt-0.5">
        <span class="block font-medium text-base leading-snug text-black
        dark:text-gray-100">Author Name</span>
        <span class="block text-sm text-gray-500 dark:text-gray-400 font-light leading-snug">{get #createdAt post}</span>
      </div>
    </div>
    <p class="text-gray-800 dark:text-gray-100 leading-snug
    md:leading-normal">{get #body post}</p>
    <div class="flex justify-between items-center mt-5">
    <div class="flex ">
      <span class="mr-6 text-green-500 dark:text-gray-400 font-light">{get #upvotes post}</span>
      <span class="mr-6 text-red-500 dark:text-gray-400 font-light">{get #downvotes post}</span>
    </div>  
    <div class="ml-1 text-gray-500 dark:text-gray-400 font-light">Score: {get #toxicityScore post}</div>
    </div>
  </div>
</div>
</a>
|]


renderPost2 post = [hsx|
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
                                class="text-blue-500 hover:underline">See discussion</a>
                            <div><a href="#" class="flex items-center"><img
                                        src="https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=731&amp;q=80"
                                        alt="avatar" class="mx-4 w-10 h-10 object-cover rounded-full hidden sm:block">
                                    <h1 class="text-gray-700 font-bold
                                        hover:underline">Author of Original Tweet</h1>
                                </a></div>
                        </div>
                    </div>
                </div>
    |]

renderPagination = [hsx|
<div class="mt-8">
                    <div class="flex">
                        <a href="#" class="mx-1 px-3 py-2 bg-white text-gray-500 font-medium rounded-md cursor-not-allowed">
                            previous
                        </a>
                    
                        <a href="#" class="mx-1 px-3 py-2 bg-white text-gray-700 font-medium hover:bg-blue-500 hover:text-white rounded-md">
                            1
                        </a>
                    
                        <a href="#" class="mx-1 px-3 py-2 bg-white text-gray-700 font-medium hover:bg-blue-500 hover:text-white rounded-md">
                            2
                        </a>
                    
                        <a href="#" class="mx-1 px-3 py-2 bg-white text-gray-700 font-medium hover:bg-blue-500 hover:text-white rounded-md">
                            3
                        </a>
                    
                        <a href="#" class="mx-1 px-3 py-2 bg-white text-gray-700 font-medium hover:bg-blue-500 hover:text-white rounded-md">
                            Next
                        </a>
                    </div>
                </div>
    |]
