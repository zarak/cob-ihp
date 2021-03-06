module Web.View.Posts.Index where

-- import           Application.Script.Inference (Predictions (..))
import           Numeric
import qualified Prelude          as P
import           Web.View.Prelude hiding (filter)

data IndexView = IndexView { posts :: [Include "predictions" Post], pages :: [Int], currentPage :: Int, totalPages :: Int }

newtype PlainString = PlainString String
instance Show PlainString where
    show (PlainString s) = s

instance View IndexView where
    html IndexView { .. } = [hsx|
<div class="flex-row justify-between container mx-auto">

        <!--for testing only-->
        <!-- <div> -->
            <!-- <a href={NewPostAction}>create new post (for testing)</a> -->
        <!-- </div> -->

        <div class="w-full">
            {forEach posts renderPost}
        </div>
        {renderPagination pages currentPage totalPages}
</div>
    |]

renderPost post = [hsx|
<div class="mt-6">
    <div class="px-10 py-6 bg-white rounded-lg shadow-md">
        <div class="flex flex-col md:flex-row md:justify-between items-center">
            <span class="font-light text-gray-600">
                {get #createdAt post |> timeAgo}
            </span>
            <div class="text-sm my-2 md:my-0 md:flex md:justify-right">
                {forEach getScore renderTag}
            </div>
        </div>
        <div class="mt-2">
            <p class="mt-2 text-gray-600">
                {get #body post}
            </p>
        </div>
        <div class="flex justify-between items-center mt-4">
            <a href={ShowPostAction (get #id post)}
                class="text-blue-500 hover:underline"
                >
                Discussion
            </a>
            <div>
                <a href={get #link post} class="flex items-center">
                    <h1 class="text-gray-700 font-bold
                        hover:underline"
                        >
                        {get #author post}
                    </h1>
                </a>
            </div>
        </div>
    </div>
</div>
    |]
        where preds = get #predictions post :: [Prediction]
              getScore = getMaxScore preds

getMaxScore preds =
    case head preds of 
      Nothing -> [("None", 0)]
      Just score -> sortBy (comparing snd) 
                              [ ("toxic" :: Text, get #toxic score)
                              , ("insult", get #insult score)
                              , ("severe toxic", get #severeToxic score)
                              , ("obscene", get #obscene score)
                              , ("identity hate", get #identityHate score)
                              , ("threat", get #threat score)]

renderTag (name, score) = if score > 0.30 then
    [hsx|
            <a href="#" 
               class="mx-1 px-2 py-1 bg-gray-600 text-gray-100
               font-bold rounded-full hover:bg-gray-500"
               >
                {name <> " "} {(showFFloat (Just 3) score "") }
            </a>
    |]
                          else [hsx||]

renderPagination pages page totalPages =
    let base = "mx-1 px-3 py-2 bg-white rounded-md font-medium inline-block"
        cursorNotAllowed = base <> " text-gray-500 cursor-not-allowed":: Text
        cursorAllowed = base <> " text-gray-700 hover:bg-blue-500 hover:text-white rounded-md" :: Text

        prevPageLink = if page == 1
                          then "" 
                          else pathTo PostsAction <> "?page=" <> show (page - 1)
        prevButtonActive = if page <= 1 
                              then cursorNotAllowed 
                              else cursorAllowed
        nextPageLink = if page == totalPages 
                          then "" 
                          else pathTo PostsAction <> "?page=" <> show (page + 1)
        nextButtonActive = if page >= totalPages 
                              then cursorNotAllowed 
                              else cursorAllowed

        withLink pageLink buttonActive text = [hsx|
                    <div class={buttonActive}>
                        <a href={pageLink}>
                            {text}
                        </a>
                    </div>
            |]
        withoutLink buttonActive text = [hsx|
                    <div class={buttonActive}>
                            {text}
                    </div>
            |]
        prevButton = if page == 1 
                        then withoutLink prevButtonActive ("<" :: Text) 
                        else withLink prevPageLink prevButtonActive ("<" :: Text)
        nextButton = if page == totalPages 
                        then withoutLink nextButtonActive (">" :: Text)
                        else withLink nextPageLink nextButtonActive (">" :: Text)
    in 
    [hsx|
<div class="mt-8">
    <div class="">
        {prevButton}
    
        {forEach pages (renderPageLink page)}
    
        {nextButton}
    </div>
</div>
    |]

renderPageLink page num =
    let base = "inline-block m-1 px-3 py-2 bg-white font-medium hover:bg-blue-500 hover:text-white rounded-md"
        inactive = base <> " text-gray-700"
        active = base <> " bg-blue-500 text-white"
        buttonStatus :: Int -> Int -> Text
        buttonStatus num page = if num == page
                                   then active :: Text
                                   else inactive :: Text
    in [hsx|
    <div class="inline-block">
        <a href={pathTo PostsAction <> "?page=" <> show num} class={buttonStatus num page}>
            {show num}
        </a>
    </div>
    |]
