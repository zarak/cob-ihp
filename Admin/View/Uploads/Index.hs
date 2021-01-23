module Admin.View.Uploads.Index where
import Admin.View.Prelude

data IndexView = IndexView { uploads :: [Upload] }


instance View IndexView where
    html IndexView { .. } = [hsx|
<a href={pathTo NewUploadAction}>
    <button type="button" class="mb-4 inline-flex items-center px-4 py-2 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
      Upload csv
    </button>
</a>

<!-- This example requires Tailwind CSS v2.0+ -->
  <div class="flex flex-col">
    <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
      <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
        <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
          <table class="min-w-full divide-y divide-gray-200">
            <thead class="bg-gray-50">
              <tr>
                <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                  Filename
                </th>
                <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                  Upload date
                </th>
                <th scope="col" class="relative px-6 py-3">
                  <span class="sr-only">Delete</span>
                </th>
              </tr>
            </thead>

            <tbody>
              {forEach (zip [1..] uploads) renderUpload}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
    |]


renderUpload (i, upload) = [hsx|
    {if even i then evenRow else oddRow}
|]
    where evenRow = [hsx|
            <tr class="bg-gray-50">
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                <a href={ShowUploadAction (get #id upload)}>
                    {get #fileUrl upload}
                </a>
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                Today
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                <a href={DeleteUploadAction (get #id upload)} class="text-indigo-600 hover:text-indigo-900">Delete</a>
              </td>
            </tr>

        |]
          oddRow = [hsx|
            <tr class="bg-white">
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                <a href={ShowUploadAction (get #id upload)}>
                    {get #fileUrl upload}
                </a>
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                Today
              </td>
              <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                <a href={DeleteUploadAction (get #id upload)} class="text-indigo-600 hover:text-indigo-900">Delete</a>
              </td>
            </tr>
         |]
