module Main exposing (..)
import Browser
import Html exposing (Html,text)

-- Tipo que contiene un mensaje
type Modelo = Modelo String

type Accion = Nada 

actualizar : Accion -> Modelo -> Modelo 
actualizar _ m = m 

vista : Modelo -> Html Accion
vista  {Modelo texto} =  text texto
main = Browser.sandbox {init = Modelo "Hola, mundo", update = actualizar, view = vista}