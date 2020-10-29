module Programa exposing (..)

type ListaI = NilI | ConsI Int ListaI
type ListaA = NilA | ConsA String ListaS
type Lista a = Nil | Cons a (Lista a)
type Fraccion = Fraccion Int Int

--Ejercicio 1

longitud xs =
    case xs of 
    Nil -> 0
    Cons b bs -> 1 + longitud bs
    
-- Ejercicio 2

lista2 = (Cons 1 (Cons -2 (Cons 3(Cons -5 Nil))))

filter f xs = 
    case xs of 
    Nil -> Nil
    Cons n ns -> if f n 
        then (Cons n) (filter f ns) 
        else (filter f ns) 

positivos2 xs = filter (\n -> n >= 0) xs
negativos2 xs = filter (\n -> n < 0) xs