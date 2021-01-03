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
