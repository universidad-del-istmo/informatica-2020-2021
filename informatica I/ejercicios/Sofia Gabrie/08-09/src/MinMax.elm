module MinMax exposing (..)



--VALOR MAXIMO EN LISTA

maximoAux xs estado =
    case xs of
    [] -> estado
    b :: bs ->
        if b > estado
        then maximoAux bs b
        else maximoAux bs estado

maximo xs =
    case xs of
    [] -> Nothing
    b1 :: bs ->
        Just (maximoAux bs b1)

--ANOTHER WAY 

maximoRec xs =
    case xs of
    [] -> Nothing
    b :: bs ->
        let prev = maximoRec bs
        in
            case prev of
            Nothing -> Just b
            Just prevValor ->
                if b > prevValor
                then Just b
                else Just prevValor






--VALOR MINIMO EN LISTA

minaux xs estado = 
    case xs of 
    [] -> estado
    b :: bs -> 
        if b < estado
        then minaux bs b
        else minaux bs estado

minimo xs =
    case xs of
    [] -> Nothing
    b1 :: bs ->
        Just (minaux bs b1)








--VALOR MINIMO Y MAXIMO EN LISTA

minmax2 xs =
    case xs of
    [] -> Nothing
    b1 :: bs -> Just ((minaux bs b1), (maximoAux bs b1))


--ANOTHER WAY

minmaxaux xs menor mayor =
    case xs of
    [] -> (menor, mayor)
    b :: bs -> if b > mayor 
                then minmaxaux bs menor b 
                else if b < menor then minmaxaux bs b mayor else minmaxaux bs menor mayor  


minmax xs =
    case xs of
    [] -> Nothing
    b1 :: bs -> Just (minmaxaux bs b1 b1)  
    
    



