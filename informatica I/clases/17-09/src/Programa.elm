module Programa exposing (..)

-- True / False
type Booleano = Verdad | Falso

and b1 b2 =
    case (b1, b2) of
    (Verdad, Verdad) -> Verdad
    _ -> Falso

or b1 b2 =
    case (b1, b2) of
    (Verdad, _) -> Verdad
    (_, Verdad) -> Verdad
    _ -> Falso

-- 0, 1, 2, 3
-- I, II, III, IIII, IIIII, ...
-- 0, 0I, 0III, 0IIII, 0IIIII, ...
-- 0, I(0), I(I(0)), I(I(I(0))), ...
-- I + II = III
-- IIII + III = IIIIIII
-- x + y = xy

type Natural = Cero | Suc Natural

cero = Cero
uno = Suc Cero
dos = Suc (Suc Cero)
tres = Suc (Suc (Suc Cero))
-- ...

suma n1 n2 =
    case (n1, n2) of
    (a, Cero) -> a
    (Cero, b) -> b
    (Suc a, b) -> Suc (suma a b)

-- suma (Suc Cero) (Suc Cero)
-- a = Cero, b = Suc Cero
-- Suc (suma Cero (Suc Cero))
-- b = Suc Cero
-- Suc (Suc Cero)

resta n1 n2 =
    case (n1, n2) of
    (Cero, _) -> Cero
    (a, Cero) -> a
    (Suc a, Suc b) -> resta a b

mult n1 n2 =
    case (n1, n2) of
    (Cero, _) -> Cero
    (_, Cero) -> Cero
    (a, Suc Cero) -> a
    (a, Suc b) -> suma a (mult a b)

type Figura = Circulo Float | Rect Float Float | TrianguloEq Float

area fig =
    case fig of
    Circulo r -> 3.14159 * r * r
    Rect b h -> b * h
    TrianguloEq l -> 0 -- Todo: calcular con teorema de pitagoras

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

type ListaString = SNil | SCons String ListaString

separarConComa valores =
    case valores of
    SNil -> ""
    (SCons str SNil) -> str
    SCons str resto -> str ++ ", " ++ separarConComa resto

