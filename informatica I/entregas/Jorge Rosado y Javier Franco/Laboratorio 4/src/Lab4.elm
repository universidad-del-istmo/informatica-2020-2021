module Lab4 exposing (..)

-- Ejercicio 1
esPar x =
    if remainderBy 2 x == 0 then
    "Par"
    else
    "Impar"

-- Ejercicio 2
mcd x y=
    if y == 0 then
        x
    else
        mcd y (remainderBy y x)

-- Ejercicio 3
esPrimo n =
    if n == 0 then
        False
    else if n == 1 then
        False
    else
        esPrimoAux n (List.range 2 (n-1))

esPrimoAux n numeros =
    let
        numero = Maybe.withDefault 0 (List.head numeros)
        resto = List.drop 1 numeros
    in
        if numero /= 0 then
            if remainderBy numero n == 0 then
                False
            else
                esPrimoAux n resto
        else
            True

-- Ejercicio 4
primo n =
    primoAux n 2 0

primoAux n i c =
    if esPrimo i then
        let
            cSig = c + 1
        in
            if n == cSig then
                i
            else
                primoAux n (i+1) cSig
    else
        primoAux n (i+1) c

-- Ejercicio 5
sumaPrimos n =
    sumaPrimosAux n 1 0

sumaPrimosAux n i suma =
    if i <= n then
        sumaPrimosAux n (i+1) (suma + primo i)
    else
        suma

-- Ejercicio 6
positivos n =
    positivosAux n (n-1) []

positivosAux n i lista =
    if i >= 1 then
        positivosAux n (i-1) (i :: lista)
    else
        lista


