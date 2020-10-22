module Lab5 exposing (..)

-- Ejercicio #1

existe x y = List.member x y

--Ejercicio #2

mayoresQue x y =
    let
        len =  List.length y 
    
    in
    List.range x (x + len)

--Ejercicio #3

promedio x =
    let
        len = List.length x
        suma =List.sum x 
    in
     suma / toFloat len

-- Ejercicio #4

type Naturales = Cons Naturales | Cero 

neutro x =
    case x of
    0 -> Cero
    b -> Cons (neutro (b - 1) )

-- Ejercicio #5

igual a b = 
    case (a , b) of
    (Cons va, Cons vb) -> igual va vb
    (Cero, Cero) -> True
    _ -> False

--Ejercicio #6

mayorQue a b =
    case (a, b) of
    (Cons va, Cons vb) -> mayorQue va vb
    (Cons va, Cero) -> True
    (Cero, _) -> False

