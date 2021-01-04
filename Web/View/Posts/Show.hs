module Web.View.Posts.Show where
import Web.View.Prelude

import qualified Text.MMark as MMark

data ShowView = ShowView 
    { post :: Include "comments" Post 
    , author :: User 
    }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <h1>{get #title post}</h1>
        <p>Author: {get #firstName author <> " " <> get #lastName author}</p>
        <p>{get #createdAt post |> timeAgo}</p>

        {renderUpvote post}

        <div>{get #body post |> renderMarkdown}</div>

        <div>
            <section class="rounded-b-lg  mt-4 ">
                <a href={NewCommentAction (get #id post)}>
                    <button class="py-2 px-4 w-full bg-red-400 text-lg text-white shadow-md rounded-sm ">Add Comment </button>
                </a>
                <div id="task-comments" class="pt-4">
                    <div>{forEach (get #comments post) renderComment2}</div>
                </div>
            </section>
        </div>
    |]
        where renderUpvote post =
                case currentUserOrNothing of 
                  Nothing -> "Upvoting disabled unless logged in" 
                  Just _ -> renderUpvoteHtml post

renderMarkdown text =
    case text |> MMark.parse "" of
      Left _ -> "Something went wrong"
      Right markdown -> MMark.render markdown 
                                     |> tshow
                                     |> preEscapedToHtml

renderComment comment = [hsx|
        <div class="mt-4 p-2 border shadow bg-light">
            <h5>{get #author comment}</h5>
            <p>{get #body comment}</p>
            
            <a class="text-secondary mr-2" href={EditCommentAction (get #id comment)}>Edit</a>
            <a class="text-secondary js-delete" href={DeleteCommentAction (get #id comment)}>Delete</a>
        </div>
    |]

renderUpvoteHtml post = [hsx|
        <span class="text-green-500">
            <a href={NewVoteAction (get #id post) (get #id currentUser)}>Upvote</a>
        </span>
    |]


renderComment2 comment = [hsx|
<!--     comment-->
<div class="bg-white rounded-lg p-3  flex flex-col justify-center items-center md:items-start shadow-lg mb-4">
  <div class="flex flex-row justify-center mr-2">
    <img alt="avatar" width="48" height="48" class="rounded-full w-10 h-10 mr-4 shadow-lg mb-4" src="https://cdn1.iconfinder.com/data/icons/technology-devices-2/100/Profile-512.png">
    <h3 class="text-purple-600 font-semibold text-lg text-center md:text-left ">@Shanel</h3>
  </div>


    <p style="width: 90%" class="text-gray-600 text-lg text-center md:text-left ">Hi good morning will it be the entire house. </p>

</div>
<!--  comment end-->
    |]
