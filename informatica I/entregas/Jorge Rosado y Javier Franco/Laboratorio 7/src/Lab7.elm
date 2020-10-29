module Lab7 exposing (..)

--Ejercicio 1: Modifique el tipo Expr para permitirle 
-- expresar tambien restar y multiplicacion
type Expr = Valor Int 
suma = Expr Valor
restar = Expr Valor 
multiplicacion = Expr

-- Ejercicio 2: Modifique la funcion evaluar para que
-- pueda ser aplicada a su nuevo tipo Expr
evaluar Expr =
    case Expr of
    Valor i -> i
    Suma a b -> evaluar a + evaluar b
    Resta a b -> evaluar a - evaluar b
    Multiplicacion a b -> evaluar a * evaluar b
    

-- Ejercicio 3: Modifique el tipo "Arbol" que se definio
-- en el laboratorio anterior para permitir que utilize
-- tipos de datos genericos en vez de estar limitado
-- nadamas al tipo Int
type ArbolBinario x = Hoja | Rama x (ArbolBinario x) (ArbolBinario x)


-- Ejercicio 4: Escriba una funcion llamada "buscarMenoresQue".
-- Esta debe aceptar un arbol definido en el ejercicio 3 y un
-- numero y debe retornar una lista con todos los valores en
-- el arbol que sean menores al numero que se dio

-- Ejemplo
arbol = Rama 1 (Rama 5 (Rama 2 Hoja Hoja) Hoja) (Rama 3 Hoja (Rama 4 Hoja Hoja))

menores = buscarMenoresQue 3 arbol
-- menores es la lista con valores [1,2]
buscarMenoresQue numero n =
    case x of 
    Hoja -> []
    Rama a b y -> 
        if a < n
        then (a :: []) ++buscarMenoresQue b n ++ buscarMenoresQue y n
        else [] ++ buscarMenoresQue b n ++ buscarMenoresQue y n 

-- Ejercicio 5: Escriba una funcion llamada "removerUno". Esta
-- funcion toma un arbol y le remueve un elemento al arbol (puede ser cualquiera).
-- La funcion debe retornar una pareja con el elemento que fue removido
-- y el arbol sin el elemento.
-- En caso que el arbol este vacio (sea Hoja), retornar Nothing
removerUno numeroa =
    case numeroa of
    Hoja -> (Nothing, numeroa)
    Rama a Hoja Hoja -> (Just a, Hoja)
    Rama a x y -> case removerUno y of
            (Just f, vr) -> (Just f, Rama a x vr)
            (Nothing, _) -> case removerUno x of
                (Just f, vl) -> (Just f, Rama a vl y)
                (Nothing, _) -> (Nothing, Rama a x y)