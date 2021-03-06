module Tests exposing (suite)

import Expect exposing (Expectation)
import LanguageTag exposing (emptySubtags)
import LanguageTag.ExtendedLanguage as ExtendedLanguage
import LanguageTag.Language as Language
import Test exposing (..)


suite : Test
suite =
    describe "bcp47"
        [ test "example" <|
            \() ->
                Language.no
                    |> LanguageTag.build emptySubtags
                    |> LanguageTag.toString
                    |> Expect.equal "no"
        ]
