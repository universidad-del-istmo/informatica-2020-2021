module Programa exposing (..)

minyMax bs estado =
    case bs of 
    [] -> estado 
    b :: bs ->
        let nuevoMayor = (b+1)
            nuevoMenor = (bs)+2
        in 
            maximoAux bs (nuevoMayor, nuevoMenor)
        if b > estado 
        then maximoAux bs  b
        else maximoAux bs estado 
    
