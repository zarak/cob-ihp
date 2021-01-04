module Web.View.Posts.Show where
import Web.View.Prelude

import qualified Text.MMark as MMark

data ShowView = ShowView 
    { post :: Include "comments" Post 
    , author :: User 
    }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PostsAction}>Posts</a></li>
                <li class="breadcrumb-item active">Show Post</li>
            </ol>
        </nav>
        <h1>{get #title post}</h1>
        <p>Author: {get #firstName author <> " " <> get #lastName author}</p>
        <p>{get #createdAt post |> timeAgo}</p>

        {renderUpvote post}

        <div>{get #body post |> renderMarkdown}</div>

        <a href={NewCommentAction (get #id post)}>Add Comment</a>

        <div>{forEach (get #comments post) renderComment}</div>
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
<div>

    <section class="rounded-b-lg  mt-4 ">
      

<form action="/" accept-charset="UTF-8" method="post"><input type="hidden" >
  <textarea class="w-full shadow-inner p-4 border-0 mb-4 rounded-lg focus:shadow-outline text-2xl" placeholder="Ask questions here." cols="6" rows="6" id="comment_content" spellcheck="false"></textarea>
  <button class="font-bold py-2 px-4 w-full bg-purple-400 text-lg text-white shadow-md rounded-lg ">Comment </button>
</form>

      <div id="task-comments" class="pt-4">
        <!--     comment-->
<div class="bg-white rounded-lg p-3  flex flex-col justify-center items-center md:items-start shadow-lg mb-4">
  <div class="flex flex-row justify-center mr-2">
    <img alt="avatar" width="48" height="48" class="rounded-full w-10 h-10 mr-4 shadow-lg mb-4" src="https://cdn1.iconfinder.com/data/icons/technology-devices-2/100/Profile-512.png">
    <h3 class="text-purple-600 font-semibold text-lg text-center md:text-left ">@Shanel</h3>
  </div>


    <p style="width: 90%" class="text-gray-600 text-lg text-center md:text-left ">Hi good morning will it be the entire house. </p>

</div>
<!--  comment end--><!--     comment-->
<div class="bg-white rounded-lg p-3  flex flex-col justify-center items-center md:items-start shadow-lg mb-4">
  <div class="flex flex-row justify-center mr-2">
    <img alt="avatar" width="48" height="48" class="rounded-full w-10 h-10 mr-4 shadow-lg mb-4" src="https://cdn1.iconfinder.com/data/icons/technology-devices-2/100/Profile-512.png">
    <h3 class="text-purple-600 font-semibold text-lg text-center md:text-left ">@Tim Motti</h3>
  </div>


    <p style="width: 90%" class="text-gray-600 text-lg text-center md:text-left "><span class="text-purple-600 font-semibold">@Shanel</span> Hello. Yes, the entire exterior, including the walls. </p>

</div>
<!--  comment end-->
      </div>
    </section>

  </div>
    |]
