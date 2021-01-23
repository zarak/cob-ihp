module Admin.View.Uploads.Show where
import Admin.View.Prelude
import System.Process

data ShowView = ShowView { upload :: Upload }

instance View ShowView where
    html ShowView { .. } = [hsx|
    <!-- This example requires Tailwind CSS v2.0+ -->
    <div class="bg-white shadow sm:rounded-lg">
      <div class="px-4 py-5 sm:p-6">
        <div class="sm:flex sm:items-start sm:justify-between">
          <div>
            <h3 class="text-lg leading-6 font-medium text-gray-900">
              {get #fileUrl upload}
            </h3>
            <div class="mt-2 max-w-xl text-sm text-gray-500">
              <p>Read tweets from file, classify, and store in database.</p>
            </div>
          </div>
          <div class="mt-5 sm:mt-0 sm:ml-6 sm:flex-shrink-0 sm:flex sm:items-center">
            <a href={GetScoresAction}>
                <button type="button" class="inline-flex items-center px-4 py-2 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                  Run inference
                </button>
            </a>
          </div>
        </div>
      </div>
    </div>
    |]
