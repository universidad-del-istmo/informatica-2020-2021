module Laboratorio exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)

type alias Model =
    { div : List Int }

initialModel : Model
initialModel = { div = List.range 0 100 }

type Msg = Noop

update : Msg -> Model -> Model
update msg model = model
    
datosFila: Int -> Html Msg
datosFila id =
    div 
    ( 
    if esPar id == True  
    then if valorPrimo id == True 
        then [style "color" "red", style "background-color" "green"]
        else [style "color" "red"]
    else if valorPrimo id == True

        then [style "color" "blue", style "background-color" "green"]
        else [style "color" "blue"]
    ) 
        [ text (Debug.toString(id)) ]

view : Model -> Html Msg
view model =
    div []
        (List.map datosFila model.div)


main : Program () Model Msg
main =
    Browser.sandbox { init = initialModel, view = view, update = update}

esPar n =
    if modBy 2 n == 0
    then True
        else False

valorPrimo x =
    if x == 1 || x == 0
    then False
        else primoAux x 2

primoAux x y =
    if y < x
    then 
        if modBy y x /= 0
        then primoAux x (y + 1)
            else False
    else True