module E exposing (..)
--Sofia Gabrie, Diego Vallejo





-- Ejercicio 1: Modifique el tipo Expr para permitirle
-- expresar tambien Resta y Multiplicacion

type Expr = Valor Int | Suma Expr Expr | Resta Expr Expr | Mult Expr Expr





-- Ejercicio 2: Modifique la funcion evaluar para que
-- pueda ser aplicada a su nuevo tipo Expr

evaluar expr =
    case expr of
    Valor i -> i
    Suma a b -> evaluar a + evaluar b
    Resta a b -> evaluar a - evaluar b
    Mult a b -> evaluar a * evaluar b




-- Ejercicio 3: Modifique el tipo "Arbol" que se definio
-- en el laboratorio anterior para permitir que utilize
-- tipos de datos genericos en vez de estar limitado
-- nadamas al tipo Int

type ArbolBinario a = Hoja | Rama a (ArbolBinario a) (ArbolBinario a)







-- Ejercicio 4: Escriba una funcion llamada "buscarMenoresQue".
-- Esta debe aceptar un arbol definido en el ejercicio 3 y un
-- numero y debe retornar una lista con todos los valores en
-- el arbol que sean menores al numero que se dio

-- Ejemplo
arbol = Rama 1 (Rama 5 (Rama 2 Hoja Hoja) Hoja) (Rama 3 Hoja (Rama 4 Hoja Hoja))

menores = buscarMenoresQue 3 arbol
-- menores es la lista con valores [1,2]



--ASK WHY SIGNOS OPUESTOS 
buscarMenoresQue x arbolBin  =
    case arbolBin of 
    Hoja -> []
    Rama b bs bss -> if x <= b then (buscarMenoresQue x bs) ++ (buscarMenoresQue x bss) else b :: (buscarMenoresQue x bs) ++ (buscarMenoresQue x bss)








-- Ejercicio 5: Escriba una funcion llamada "removerUno". Esta
-- funcion toma un arbol y le remueve un elemento al arbol (puede ser cualquiera).
-- La funcion debe retornar una pareja con el elemento que fue removido
-- y el arbol sin el elemento.
-- En caso que el arbol este vacio (sea Hoja), retornar Nothing



resultado = removerUno
-- resultado seria algo como por ejemplo: (Just 4, Rama 1 (Rama 5 (Rama 2 Hoja Hoja) Hoja) (Rama 3 Hoja Hoja))
-- depende de como hayan decidido escoger el valor que se va remover. En este caso se escogio el 4
-- ya que es el valor que esta en la rama mas profunda del lado derecho