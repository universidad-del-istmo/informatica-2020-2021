module Programa exposing (..)

minYmax bs = 
    let 
            maximo = Maybe.withDefault 0 (List.maximum bs)
            minimo = Maybe.withDefault 0 (List.minimum bs) 
      in
        (minimo, maximo)
        