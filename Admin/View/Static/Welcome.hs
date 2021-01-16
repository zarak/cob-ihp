module Admin.View.Static.Welcome where
import Admin.View.Prelude
import Admin.Controller.Uploads
import Admin.Controller.Users
import Web.Controller.Posts

data WelcomeView = WelcomeView

instance View WelcomeView where
    html WelcomeView = [hsx|
         <div style="background-color: #657b83; padding-top: 2rem; padding-bottom: 2rem; color:hsla(196, 13%, 96%, 1); border-radius: 4px">
              <div style="max-width: 800px; margin-left: auto; margin-right: auto">
                  <a href={UploadsAction}>Uploads</a>
                  <a href={UsersAction}>Registered Users</a>
              </div>
         </div>

         <div style="max-width: 800px; margin-left: auto; margin-right: auto; margin-top: 4rem">
         </div> 
|]
