module Admin.View.Static.Welcome where
import Admin.View.Prelude
import Admin.Controller.Uploads
import Admin.Controller.Users
import Admin.Controller.Posts

data WelcomeView = WelcomeView

instance View WelcomeView where
    html WelcomeView = [hsx|
         <div style="background-color: #657b83; padding-top: 2rem; padding-bottom: 2rem; color:hsla(196, 13%, 96%, 1); border-radius: 4px">
                  <a class="btn text-white" href={UploadsAction}>Uploads</a>
                  <a class="btn text-white" href={UsersAction}>Registered Users</a>
                  <a class="btn text-white" href={PostsAction}>Review Posts</a>
         </div>

|]
