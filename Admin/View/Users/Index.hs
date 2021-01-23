module Admin.View.Users.Index where
import Admin.View.Prelude

data IndexView = IndexView { users :: [User] }

instance View IndexView where
    html IndexView { .. } = [hsx|
<div class="pl-4 mb-4">
    <a href={pathTo NewUserAction} class="btn btn-primary ml-4">+ Create New User</a>
</div>

<!-- This example requires Tailwind CSS v2.0+ -->
<!-- This example requires Tailwind CSS v2.0+ -->
<div class="container mx-auto px-4 sm:px-6 lg:px-8">
  <!-- Content goes here -->

<div class="flex flex-col">
  <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
    <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
      <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
        <table class="min-w-full divide-y divide-gray-200">
          <thead class="bg-gray-50">
            <tr>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                Name
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                Email
              </th>
              <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                Role
              </th>
              <th scope="col" class="relative px-6 py-3">
                <span class="sr-only">Edit</span>
              </th>
            </tr>
          </thead>


          <tbody>
            {forEach users renderUser}
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

</div>
    |]


renderUser user = [hsx|
    <!-- <tr> -->
        <!-- <td></td> -->
        <!-- <td></td> -->
        <!-- <td><a href={ShowUserAction (get #id user)}>Show</a></td> -->
        <!-- <td><a href={EditUserAction (get #id user)} class="text-muted">Edit</a></td> -->
        <!-- <td><a href={DeleteUserAction (get #id user)} class="js-delete text-muted">Delete</a></td> -->
    <!-- </tr> -->
            <!-- Even row -->
            <tr class="bg-gray-50">
              <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                Cody Fisher
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                cody.fisher@example.com
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                Owner
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                <a href="#" class="text-indigo-600 hover:text-indigo-900">Edit</a>
              </td>
            </tr>

            <!-- Odd row -->
            <tr class="bg-white">
              <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
                {get #lastName user}
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                {get #email user}
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                User
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                <a href={ShowUserAction (get #id user)} class="text-indigo-600 hover:text-indigo-900">Show</a>
                <a href={EditUserAction (get #id user)} class="mx-4 text-indigo-600 hover:text-indigo-900">Edit</a>
                <a href={DeleteUserAction (get #id user)} class="text-indigo-600 hover:text-indigo-900">Delete</a>
              </td>
            </tr>

|]
