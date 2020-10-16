module Lab exposing (..)

-- Ejercicio 1:
-- Modifique el tipo Expr para permitirle expresar tambien
-- Resta y Multiplicacion.

type Expr = Valor Int | Suma Expr Expr | Resta Expr Expr | Multi Expr Expr

-- Ejercicio 2:
-- Modifique la función evaluar para que pueda ser aplicada a
-- su nuevo tipo Expr.

evaluar expr =
    case expr of
    Valor i -> i
    Suma a b -> evaluar a + evaluar b
    Resta a b -> evaluar a - evaluar b
    Multi a b -> evaluar a * evaluar b

-- Ejercicio 3:
-- Modifique el tipo "Arbol" que se definio en el laboratorio
-- anterior para permitir que utilize tipos de datos genéricos
-- en vez de estar limitado al tipo Int.

type Arbol a = Hoja | Rama a (Arbol a) (Arbol a)

ejemplo = Rama 1 (Rama 2 Hoja Hoja) (Rama 3 (Rama 4 Hoja Hoja) Hoja)

-- Ejercicio 4:
-- Escriba una funcion llamada "buscarMenoresQue". Esta debe
-- aceptar un árbol definido en el ejercicio 3 y un numero, y
-- debe retornar una lista con todos los valores en el árbol
-- que sean menores al número que se dio.

buscarMenoresQue n xs =
    if n == 0
    then []
    else
        case xs of
        Hoja -> []
        Rama a b bs -> 
            if a < n
            then a :: buscarMenoresQue n b ++ buscarMenoresQue n bs
            else buscarMenoresQue n b ++ buscarMenoresQue n bs

-- Ejercicio 5:
-- Escriba una funcion llamada "removerUno". Esta funcion toma
-- un arbol y le remueve un elemento al arbol (puede ser
-- cualquiera). La funcion debe retornar una pareja con el
-- elemento que fue removido y el arbol sin el elemento. En caso
-- que el arbol este vacio (sea Hoja), retornar Nothing.

removerUno xs =
    case xs of
    Hoja -> (Nothing, xs)
    Rama a Hoja Hoja -> (Just a, Hoja)
    Rama a b bs ->
        case removerUno bs of
        (Just x, x1) -> (Just x, Rama a b x1)
        (_, _) ->
            case removerUno b of
            (Just x, x2) -> (Just x, Rama a x2 bs)
            (_, _) -> (Nothing, Rama a b bs)