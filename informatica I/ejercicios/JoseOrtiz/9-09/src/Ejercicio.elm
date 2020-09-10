module Ejercicio exposing (..)

suma xs = 
    case xs of 
    [] -> Nothing

    b :: bs -> 
        1 + suma bs 

