module Parcial exposing (..)
import List

--1
diametro = 30

radio = diametro/2
areacirculo = (pi*radio^2)

cuadrado = 10

areacuadrado = cuadrado^2

comp = areacirculo > areacuadrado

circadentro = diametro == 10

lista7 = 'c' :: 'l' :: 'a' :: 'u' :: 'd' :: 'e' :: 't' :: 't' :: 'e' :: ' ' :: 'p' :: 'o' :: 'n' :: 's' :: []

valorlista7 = List.take 9 lista7

valorlista8 = List.drop 10 lista7

final1= List.drop 7 valorlista7
final = List.head (List.take 1 final1 )

final2 = List.drop 11 lista7

principio = List.head (List.take 1 final2 )

letra1 = Maybe.withDefault 't'

letra2 = Maybe.withDefault 'o'

nueva = final :: principio :: []