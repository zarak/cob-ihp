module Admin.View.Posts.Index where
import Admin.View.Prelude

data IndexView = IndexView { posts :: [Include "votes" Post] }

instance View IndexView where
    html IndexView { .. } = [hsx|
    <!-- This example requires Tailwind CSS v2.0+ -->
    <div class="flex flex-col">
      <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
        <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
          <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
            <table class="table-auto min-w-full divide-y divide-gray-200">
              <thead class="bg-gray-50">
                <tr>
                  <th scope="col" class="hidden md:block px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Tweet
                  </th>
                  <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Upvotes
                  </th>
                  <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                    Confirmed
                  </th>
                  <th scope="col" class="relative px-6 py-3">
                    <span class="sr-only">Edit</span>
                  </th>
                </tr>
              </thead>
              <tbody class="bg-white divide-y divide-gray-200">
                {forEach (zip [1..] posts) renderPost}
                <!-- More items... -->
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    |]


renderPost (i, post) = [hsx|
            <tr>
              <td class="hidden md:block px-6 py-4">
                <div class="flex items-center">
                  <div class="ml-4">
                    <div class="text-sm font-medium text-gray-900">
                       {get #author post}
                    </div>
                    <div class="text-sm text-gray-500">
                       {get #body post}
                    </div>
                  </div>
                </div>
              </td>
              <td class="px-6 py-4 whitespace-nowrap">
                {length votes}
              </td>
              <td class="px-6 py-4 whitespace-nowrap">
                {if (get #confirmedForTraining post) then confirmed else notConfirmed}
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                <a href="#" class="text-indigo-600 hover:text-indigo-900">Delete</a>
              </td>
            </tr>
|]
    where confirmed = [hsx|
                <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
                  {get #confirmedForTraining post}
                </span>
        |]
          notConfirmed = [hsx|
                <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-100 text-red-800">
                  {get #confirmedForTraining post}
                </span>
        |]
          votes = get #votes post
