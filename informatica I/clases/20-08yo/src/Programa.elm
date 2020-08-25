module Programa exposing (..)

divisionOpcion numerador denominador =
    if denominador == 0
    then Nothing
    else Just(numerador/denominador)

divisionParejaOpcion (numerador,denominador) =
    divisionOpcion numerador denominador
