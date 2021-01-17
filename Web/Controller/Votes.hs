module Web.Controller.Votes where

import Web.Controller.Prelude
import Web.View.Votes.Index
import Web.View.Votes.New
import Web.View.Votes.Edit
import Web.View.Votes.Show

instance Controller VotesController where
    action VotesAction = do
        votes <- query @Vote |> fetch
        render IndexView { .. }

    action NewVoteAction { postId, userId } = do
        accessDeniedUnless (userId == currentUserId)
        existingVote <- query @Vote
            |> filterWhere (#userId, userId)
            |> filterWhere (#postId, postId)
            |> fetchOneOrNothing
        case existingVote of
            Nothing -> do
                vote <- newRecord @Vote 
                        |> set #postId postId 
                        |> set #userId userId 
                        |> createRecord
                setSuccessMessage "Thanks for voting!"
                redirectTo ShowPostAction { postId }
            Just _ -> do
                setErrorMessage "You have already voted"
                redirectTo ShowPostAction { postId }

    action ShowVoteAction { voteId } = do
        vote <- fetch voteId
        render ShowView { .. }

    action EditVoteAction { voteId } = do
        vote <- fetch voteId
        render EditView { .. }

    action UpdateVoteAction { voteId } = do
        vote <- fetch voteId
        vote
            |> buildVote
            |> ifValid \case
                Left vote -> render EditView { .. }
                Right vote -> do
                    vote <- vote |> updateRecord
                    setSuccessMessage "Vote updated"
                    redirectTo EditVoteAction { .. }

    action CreateVoteAction = renderNotFound

    action DeleteVoteAction { voteId } = do
        vote <- fetch voteId
        deleteRecord vote
        setSuccessMessage "Vote deleted"
        redirectTo VotesAction

buildVote vote = vote
    |> fill @["userId","postId"]
