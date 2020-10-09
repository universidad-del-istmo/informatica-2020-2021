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

-- sumarG (Cons 1 (Cons 2 Nil)) 0 (+)
-- | xs = (Cons 1 (Cons 2 Nil)), cero = 0, sum = (+)
-- | f1 = 1, fs = Cons 2 Nil
-- (+) 1 (sumarG (Cons 2 Nil) 0 (+))
-- | xs = Cons 2 Nil, cero = 0, sum = (+)
-- | f1 = 2, fs = Nil
-- (+) 1 ((+) 2 (sumarG Nil 0 (+)))
-- | xs = Nil, cero = 0, sum = (+)
-- (+) 1 ((+) 2 0)

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

incrementarTodos xs =
    case xs of
    Nil -> Nil
    Cons b bs -> Cons (b + 1) (incrementarTodos bs)

decrementarTodos xs =
    case xs of
    Nil -> Nil
    Cons b bs -> Cons (b - 1) (decrementarTodos bs)

map f xs =
    case xs of
    Nil -> Nil
    Cons b bs -> Cons (f b) (map f bs)

inc x = x + 1

incrementarTodos2 xs =
    -- map inc xs
    map (\x -> x + 1) xs

positivos xs =
    case xs of
    Nil -> Nil
    Cons n ns ->
        if n >= 0
        then Cons n (positivos ns)
        else positivos ns

negativos xs =
    case xs of
    Nil -> Nil
    Cons n ns ->
        if n < 0
        then Cons n (negativos ns)
        else negativos ns

longitud xs =
    case xs of 
        Nil -> 0
        Cons b bs -> 1 +longitud bs

-- Ejercicio: Definir la funcion filter
filter f xs = filter f xs
    filter fx =
        case xs of
        Nil -> Nil
        Cons n ns ->
            if f n then (Cons n)(filter f ns) 
            else (filter f ns)

positivos2 xs = filter (\n -> n >= 0) xs
negativos2 xs = filter (\n -> n < 0) xs

