module Laboratorio exposing (..)

type ListaNums = Nil | Cons Int ListaNums

-- [] ; [] ; Nil
-- [1] ; 1::[] ; Cons 1 Nil
-- [1,2] ; 1::2::[] ; Cons 1 (Cons 2 Nil)

sumar valores =
    case valores of
    Nil -> 0
    Cons i resto -> i + sumar resto

contar valores =
    case valores of
    Nil -> 0
    Cons _ resto -> 1 + sumar resto

promedio valores = sumar valores // contar valores

-- Nuestro Type
type ArbolBinario = Hoja | Rama Int ArbolBinario ArbolBinario

ejemplo1 = Rama 3 (Rama 7 Hoja Hoja) (Rama 4 (Rama 2 Hoja Hoja) Hoja)

sumarArbol valor =
    case valor of
    Hoja -> 0
    Rama i x y -> i + sumarArbol x + sumarArbol y

contarArbol valores =
    case valores of
    Hoja -> 0
    Rama _ x y -> 1 + contarArbol x + contarArbol y

comprobarNumero x y=
    case y of
    Hoja -> False 
    
    Rama i w v-> 
        if i == x 
        then True
        else comprobarNumero x w || comprobarNumero x v

sumarCadaArbol valor =
    case valor of
    Hoja -> valor
    Rama i x y -> Rama (i + 1) (sumarCadaArbol x) (sumarCadaArbol y)

type ArbolB = Hojita | Ramita Int (List ArbolB)

ejemplo2 = Ramita 7 [Ramita 5 [Hojita]]

sumarArbolitos valor =
    case valor of
    Hojita-> valor
    Ramita i x -> Ramita (i + 1)  (List.map sumarArbolitos x)