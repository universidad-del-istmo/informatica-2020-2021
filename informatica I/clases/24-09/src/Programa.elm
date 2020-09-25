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

-- valor 2 (Cons 1 (Cons 2 (Cons 3 Nil)))
-- | i = 2, xs = (Cons 1 (Cons 2 (Cons 3 Nil)))
-- | i2 = 2, bs = (Cons 2 (Cons 3 Nil))
-- valor (2 - 1) (Cons 2 (Cons 3 Nil))
-- valor 1 (Cons 2 (Cons 3 Nil))
-- | i = 1, xs = (Cons 2 (Cons 3 Nil))
-- | i2 = i = 1, bs = (Cons 3 Nil)
-- valor (1 - 1) (Cons 3 Nil)
-- valor 0 (Cons 3 Nil)
-- | i = 0,  b = 3
-- Just 3

sumar xs =
    case xs of
    Nil -> 0
    Cons b bs -> b + sumar bs

-- sumar (Cons 1 (Cons 2 Nil))
-- | b = 1, bs = Cons 2 Nil
-- 1 + sumar (Cons 2 Nil)
-- | b = 2, bs = Nil
-- 1 + 2 + sumar Nil

type Expr = Valor Int | Suma Expr Expr

-- 1 + 2 + 3
-- (1 + 2) + 3
e = Suma (Suma (Valor 1) (Valor 2)) (Valor 3)

v1 = Valor 1
v2 = Valor 2
v3 = Valor 3
ea = Suma v1 v2
ee = Suma ea v3


evaluar ex =
    case ex of
    Valor n -> n
    Suma e1 e2 -> evaluar e1 + evaluar e2

-- evaluar (Suma (Valor 1) (Valor 3))
-- | e1 = Valor 1, e2 = Valor 3
-- evaluar (Valor 1) + evaluar (Valor 3)
-- | ex = Valor 1
-- | n = 1
-- 1 + evaluar (Valor 3)
-- | ex = Valor 3
-- | n = 3
-- 1 + 3
-- 4
