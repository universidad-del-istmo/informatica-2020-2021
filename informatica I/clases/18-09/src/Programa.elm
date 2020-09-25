module Programa exposing (..)

sumar x y = x + y
-- sumar 4 5
-- 4 + 5
-- 9

esPar i =
    if i == 0
    then True
    else if i == 1
    then False
    else not (esPar (i - 1))

-- esPar 2
-- = not (esPar (2 - 1))
-- = not (esPar 1)
-- = not (False)
-- = True

-- esPar 3
-- = not (esPar (3 - 1))
-- = not (esPar 2)
-- Ver la reduccion anterior
-- = not (True)
-- = False

sumatoria i =
    if i == 0
    then 0
    else i + sumatoria (i - 1)

-- sumatoria 3
-- = 3 + sumatoria (3 - 1)
-- = 3 + sumatoria 2
-- = 3 + 2 + sumatoria (2 - 1)
-- = 3 + 2 + sumatoria 1
-- = 3 + 2 + 1 + sumatoria (1 - 1)
-- = 3 + 2 + 1 + sumatoria 0
-- = 3 + 2 + 1 + 0
-- = 6

rango0 i =
    if i == 0
    then []
    else i :: rango0 (i - 1)

-- rango0 3
-- = 3 :: rango0 (3 - 1)
-- = 3 :: rango0 2
-- = 3 :: 2 :: rango0 (2 - 1)
-- = 3 :: 2 :: rango0 1
-- = 3 :: 2 :: 1 :: rango0 (i - 1)
-- = 3 :: 2 :: 1 :: rango0 0
-- = 3 :: 2 :: 1 :: []

rango0Asc i = List.reverse (rango0 i)

concatenar xs ys =
    case xs of
    [] -> ys
    b :: bs -> b :: concatenar bs ys

-- concatenar [1,2,3] [4,5]
-- b = 1, bs = [2,3]
-- = 1 :: concatenar [2,3] [4,5]
-- b = 2, bs = [3]
-- = 1 :: 2 :: concatenar [3] [4,5]
-- b = 3, bs = []
-- = 1 :: 2 :: 3 :: concatenar [] [4, 5]
-- = 1 :: 2 :: 3 :: [4, 5]

zip xs ys =
    case (xs, ys) of
    ([], _) -> []
    (_, []) -> []
    (b :: bs, c :: cs) -> (b, c) :: zip bs cs

-- zip [1,2,3] [4,5]
-- b = 1, bs = [2,3], c = 4, cs = [5]
-- = (1, 4) :: zip [2,3] [5]
-- b = 2, bs = [3], c = 5, cs = []
-- (1, 4) :: (2, 5) :: zip [3] []
-- (1, 4) :: (2, 5) :: []

type Lista = Nil | Cons Int Lista

concat2 xs ys =
    case xs of
    Nil -> ys
    (Cons b bs) -> Cons b (concat2 bs ys)

-- concat2 (Cons 1 (Cons 2 Nil)) (Cons 3 Nil)
-- b = 1, bs = Cons 2 Nil
-- Cons 1 (concat2 (Cons 2 Nil) (Cons 3 Nil))
-- b = 2, bs = Nil
-- Cons 1 (Cons 2 (concat2 Nil (Cons 3 Nil)))
-- Cons 1 (Cons 2 (Cons 3 Nil))
 