module Config where

import IHP.Prelude
import IHP.Environment
import IHP.FrameworkConfig

import IHP.FlashMessages.Types
import IHP.HtmlSupport.QQ (hsx)
import IHP.View.Types

config :: ConfigBuilder
config = do
    option Development
    option (AppHostname "localhost")
    option tailwind

tailwind :: CSSFramework
tailwind = def { styledFlashMessage, styledSubmitButtonClass, styledFormGroupClass, styledFormFieldHelp, styledInputClass, styledInputInvalidClass, styledValidationResultClass }
    where
        styledFlashMessage _ (SuccessFlashMessage message) = [hsx|<div class="bg-green-100 border border-green-500 text-green-900 px-4 py-3 rounded relative">{message}</div>|]
        styledFlashMessage _ (ErrorFlashMessage message) = [hsx|<div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative">{message}</div>|]

        styledInputClass FormField {} = "form-control"
        styledInputInvalidClass _ = "is-invalid"

        styledSubmitButtonClass = "bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"

        styledFormFieldHelp _ FormField { helpText = "" } = mempty
        styledFormFieldHelp _ FormField { helpText } = [hsx|<p class="text-gray-600 text-xs italic">{helpText}</p>|]

        styledFormGroupClass = "flex flex-wrap -mx-3 mb-6"

        styledValidationResultClass = "text-red-500 text-xs italic"
