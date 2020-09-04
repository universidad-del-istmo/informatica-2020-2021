module Programa exposing (..)

downFrom n =
    case n of
    0 -> [0]
    i -> i :: downFrom (i - 1)

-- downFrom 2
-- = 2 :: downFrom (2 - 1)
-- Por que i = 2
-- = 1 :: dwonFrom (1 - 1)
-- por que i = 1
-- = [0]

sumar xs =
    case xs of
    [] -> 0
    b :: bs -> b + sumar bs

type Natural = Cero | Suc Natural

-- 0
cero = Cero

-- 1
uno = Suc cero

-- 2
dos = Suc uno

suc = Suc

fromInt i =
    case i of
    0 -> Cero
    x -> Suc (fromInt (i-1))

-- fromInt 2
-- Suc (fromInt (2 - 1))
-- Suc (Suc (fromInt (1 - 1))
-- Suc (Suc (Cero))

toInt nat =
    case nat of
    Cero -> 0
    Suc nat2 -> 1 + toInt nat2

sonIguales n1 n2 =
    case (n1, n2) of
    (Cero, Cero) -> True
    (Suc i1, Suc i2) -> sonIguales i1 i2
    _ -> False

type Figura = Circulo Float | Rect Float Float

pi = 3.14159

area figura =
    case figura of
    Circulo radio -> pi*radio*radio
    Rect alto ancho -> alto * ancho

type Bool = Verdad | Falso

iff b si no =
    case b of
    Verdad -> si
    Falso -> no