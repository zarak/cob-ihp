module Web.View.Posts.Show where
import Web.View.Prelude hiding (lookup)

import Text.Printf
import           Numeric
import qualified Prelude as P
import qualified Text.Read as TR
-- import Data.Text
import qualified Text.MMark as MMark
import Text.Countable
import Data.Aeson
import Application.Script.Inference (Predictions (..))
import Data.HashMap.Strict (lookup)

data ShowView = ShowView 
    { post :: Include' ["comments", "predictions"] Post 
    , upvotes :: Int
    , hasVoted :: Maybe Vote
    -- , preds :: Include "predictions" Post
    }

newtype PlainString = PlainString String
instance Show PlainString where
    show (PlainString s) = s

instance View ShowView where
    html ShowView { .. } = [hsx|
        {renderPost post upvotes hasVoted}

        <div>
            <section class="rounded-b-lg  mt-4 ">
                <a href={NewCommentAction (get #id post)}>
                    <button class="py-2 px-4 md:w-auto bg-blue-400 hover:bg-blue-800 text-red-50 shadow-md rounded-sm">Add Comment </button>
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
      {displayEditDelete}

</div>
<!--  comment end-->
    |]
        where displayEditDelete = if get #id currentUser == get #userId comment 
                                    then [hsx|
                                      <div class="modify flex-col justify-center items-center text-gray-500">
                                          <a class="text-secondary mr-4" href={EditCommentAction (get #id comment)}>Edit</a>
                                          <a class="text-secondary js-delete" href={DeleteCommentAction (get #id comment)}>Delete</a>
                                      </div> 
                                          |] 
                                    else [hsx|<div disabled></div>|]

renderPost post upvotes hasVoted = [hsx|
                <div class="mt-6">
                    <div class="px-10 py-6 bg-white shadow-md">
                        <div class="flex justify-between items-center"><span
                             class="font-light text-gray-600">{get #createdAt post |> timeAgo}</span>


                        </div>
                        <div class="mt-2">
                            <!--<a href="#" class="text-2xl-->
                                <!--text-gray-700 font-bold hover:underline">Title-->
                            <!--</a>-->
                            <p class="mt-2 text-gray-600 ">{get #body post}</p>
                        </div>
                        <div class="flex justify-between items-center mt-4">

                            <div>
                                <a href="#" class="flex items-center">
                                    <h1 class="text-gray-700 font-bold hover:underline">
                                        Author
                                    </h1>
                                </a>
                            </div>
                        </div>
                    </div>
                    {renderLabels}
                </div>
    |]
        where renderUpvote post upvotes hasVoted =
                case currentUserOrNothing of 
                  Nothing -> "Upvoting disabled unless logged in" 
                  Just _ -> renderUpvoteHtml post upvotes hasVoted 
              -- getScore preds f = (decode (encode preds) :: Maybe Predictions) >>= (\x -> pure $ pack (printf "%.2f" (f x) :: String)) >>= \x' -> (TR.readMaybe (unpack x')) :: Maybe Float
              renderLabels = forEach (get #predictions post) (\pred ->
                  [hsx| 
                <div class="flex flex-row justify-between items-center mt-4">
                    <div class="w-1/2">
                        <div class="flex flex-col justify-between items-center mt-4">
                            <a href="#"
                                class="w-full px-2 py-1 bg-blue-600 text-gray-100
                                font-bold hover:bg-blue-500">toxic <span>{showFFloat (Just 3) (get #toxic pred) ""}</span> 
                            </a>
                            <a href="#"
                                class="w-full mt-1 px-2 py-1 bg-green-600 text-gray-100
                                font-bold hover:bg-gren-500">insult <span>{showFFloat (Just 3) (get #insult pred) ""}</span> 
                            </a>
                            <a href="#"
                                class="w-full mt-1 px-2 py-1 bg-yellow-600 text-gray-100
                                font-bold hover:bg-yellow-500">identity hate <span>{showFFloat (Just 3) (get #identityHate pred) ""}</span> 
                            </a>
                        </div>
                    </div>
                    <div class="m-2">
                        {renderUpvote post upvotes hasVoted}
                    </div>
                </div>
                  |])

