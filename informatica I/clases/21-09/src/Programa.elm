module Programa exposing (..)

type ListaI = NilI | ConsI Int ListaI

headI xs =
    case xs of
    NilI -> Nothing
    ConsI a _ -> Just a

type ListaS = NilS | ConsS String ListaS

headS xs =
    case xs of
    NilS -> Nothing
    ConsS a _ -> Just a

type Lista a = Nil | Cons a (Lista a)

head xs =
    case xs of
    Nil -> Nothing
    Cons a _ -> Just a

eliminarComas xs =
    case xs of
    Nil -> Nil
    Cons b bs -> Cons (String.replace "," "" b) (eliminarComas bs)

type Fraccion = Fraccion Int Int

sumar (Fraccion n1 d1) (Fraccion n2 d2) =
    let
        rn1 = n1 * d2
        rn2 = n2 * d1
    in
        Fraccion (rn1 + rn2) (d1*d2)

sumatoria xs =
    case xs of
    Nil -> 0
    Cons b bs -> b + sumatoria bs

sumatoriaFrac xs =
    case xs of
    Nil -> Fraccion 0 1
    Cons b bs -> sumar b (sumatoriaFrac bs)

-- Calcula la longitud de un valor de tipo (Lista a)
longitud xs = ?
