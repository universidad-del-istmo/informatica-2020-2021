module Programa exposing (..)

valor = 0

maybeVacio = List.head []

maybeConValor = List.head [1,2,3]

valor1 = Maybe.withDefault 0 maybeVacio + 1

valor2 =  Maybe.withDefault 0 maybeConValor + 1


lista1 = [1,2,3]

lista2 = 4 :: lista1

lista3 = 6 :: lista2

lista4 = List.take 2 lista3

lista5 = List.drop 3 lista3

lista6 = 42 ::lista3



-->  List.head (List.drop 2 Programa.lista3)> 
 --List.head (List.drop 2 Programa.lista3)

--Just 1 : Maybe number
--> Programa.lista6
--[42,6,4,1,2,3]
   -- : List number