module Programa exposing (..)

incrementar a = a + 1

type Lista a = Nil | Cons a (Lista a)

head xs =
    case xs of
    Nil -> Nothing
    Cons b _ -> Just b

valor i xs =
    case (i, xs) of
    (0, Cons b _) -> Just b
    (i2, Cons _ bs) -> valor (i2 - 1) bs
    _ -> Nothing

type Fraccion = Fraccion Int Int

fracciones = Cons (Fraccion 1 2) (Cons (Fraccion 1 3) (Cons (Fraccion 1 4) Nil))

sumaF (Fraccion n1 d1) (Fraccion n2 d2) =
    Fraccion (n1*d2 + n2 * d1) (d1 * d2)

sumaS s1 s2 = s1 ++ ", " ++ s2

sumarInts xs =
    case xs of
    Nil -> 0
    Cons b bs -> b + sumarInts bs

sumarFracciones xs =
    case xs of
    Nil -> Fraccion 0 1
    Cons f1 fs -> sumaF f1 (sumarFracciones fs)

sumarStrings xs =
    case xs of
    Nil -> ""
    Cons s1 ss -> s1 ++ ", " ++ sumarStrings ss

sumarG : Lista a -> a -> (a -> a -> a) -> a
sumarG xs cero sum =
    case xs of
    Nil -> cero
    Cons f1 fs -> sum f1 (sumarG fs cero sum)

sumarI : Lista Int -> Int
sumarI xs = sumarG xs 0 (+)

sumarF : Lista Fraccion -> Fraccion
sumarF xs = sumarG xs (Fraccion 0 1) sumaF

sumarS : Lista String -> String
sumarS xs = sumarG xs "" sumaS

-- sumaG a b =
--     case (a, b) of
--     (Fraccion _ _, Fraccion _ _) -> sumaF a b
--     (Fraccion _ _, j) -> sumaF a (Fraccion j 1)
--     (i, Fraccion _ _) -> sumaF (Fraccion i 1) b
--     (i, j) -> i + j


