module Web.View.Posts.Show where
import Web.View.Prelude

import qualified Text.MMark as MMark
import Text.Countable

data ShowView = ShowView 
    { post :: Include "comments" Post 
    , upvotes :: Int
    , hasVoted :: Maybe Vote
    }

instance View ShowView where
    html ShowView { .. } = [hsx|
        {renderPost post upvotes hasVoted}

        <div>
            <section class="rounded-b-lg  mt-4 ">
                <a href={NewCommentAction (get #id post)}>
                    <button class="py-2 px-4 md:w-auto bg-red-400 text-red-50 shadow-md rounded-sm ">Add Comment </button>
                </a>
                <div id="task-comments" class="pt-4 pl-4">
                    <div>{forEach (get #comments post) renderComment}</div>
                </div>
            </section>
        </div>    |]

renderMarkdown text =
    case text |> MMark.parse "" of
      Left _ -> "Something went wrong"
      Right markdown -> MMark.render markdown 
                                     |> tshow
                                     |> preEscapedToHtml


renderUpvoteHtml post upvotes hasVoted = [hsx|
        <div class="flex-row justify-center items-center">
            <span class="text-green-500 pr-4">
                <a href={NewVoteAction (get #id post) (get #id currentUser)}>
                    {thumbsUp hasVoted}
                </a>
            </span>
            <span>
                {show upvotes <> " " <> inflect "upvote" upvotes} 
            </span>
        </div>
    |]
        where thumbsUp hasVoted = case hasVoted of
                                    Nothing -> [hsx|<i class="far fa-thumbs-up fa-lg"></i>|]
                                    Just _ -> [hsx|<i class="fas fa-thumbs-up fa-lg"></i>|]


renderComment comment = [hsx|
<!--     comment-->
<div class="bg-white rounded-lg p-3 flex flex-col justify-center items-center md:items-start shadow mb-4">
  <div class="flex flex-row justify-center mr-2">
    <!--<img alt="avatar" width="48" height="48" class="rounded-full w-10 h-10 mr-4 shadow mb-4" src="https://cdn1.iconfinder.com/data/icons/technology-devices-2/100/Profile-512.png">-->
    <h3 class="text-red-600 font-semibold text-center md:text-left ">@{get
        #author comment}</h3>
  </div>

  <p style="width: 90%" class="text-gray-700 text-center md:text-left ">
      {get #body comment}
  </p>

  <div class="modify flex-col justify-center items-center text-gray-500">
      <a class="text-secondary mr-4" href={EditCommentAction (get #id comment)}>Edit</a>
      <a class="text-secondary js-delete" href={DeleteCommentAction (get #id comment)}>Delete</a>
  </div>
</div>
<!--  comment end-->
    |]

renderPost post upvotes hasVoted = [hsx|
                <div class="mt-6">
                    <div class="px-10 py-6 bg-white shadow-md">
                        <div class="flex justify-between items-center"><span
                             class="font-light text-gray-600">{get #createdAt post |> timeAgo}</span><a href="#"
                                class="px-2 py-1 bg-gray-600 text-gray-100
                                font-bold rounded hover:bg-gray-500">Score {get #toxicityScore post}</a>
                        </div>
                        <div class="mt-2">
                            <!--<a href="#" class="text-2xl-->
                                <!--text-gray-700 font-bold hover:underline">Title-->
                            <!--</a>-->
                            <p class="mt-2 text-gray-600 ">{get #body post}</p>
                        </div>
                        <div class="flex justify-between items-center mt-4">
                            {renderUpvote post upvotes hasVoted}

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
        where renderUpvote post upvotes hasVoted =
                case currentUserOrNothing of 
                  Nothing -> "Upvoting disabled unless logged in" 
                  Just _ -> renderUpvoteHtml post upvotes hasVoted
