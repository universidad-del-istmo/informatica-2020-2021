module Lab6 exposing (..)



-- Fecha de entrega: 25 de Septiembre, 11:59pm

-- A continuacion se presenta un tipo algebraico para representar una
-- estructura de datos llamada "arbol binario". El arbol binario es
-- una herramienta muy utilizada en la computacion para la almacenacion
-- y accesso eficiente de data.

type ArbolBinario = Hoja | Rama Int ArbolBinario ArbolBinario

-- Como puede ver, cada valor que esta almacenado en un arbol
-- binario esta conectado a otros dos arboles que pueden tener
-- mas valores o simplemente el final. Un ejemplo es:

ejemplo1 = Rama 1 (Rama 2 Hoja Hoja) (Rama 3 (Rama 4 Hoja Hoja) Hoja)

-- Ese arbol binario se podria representar visualmente de la siguiente manera
--                               1
--                              / \
--                             2   3
--                                /
--                               4



-- Pregunta #1: Escriba una funcion que cuente la cantidad de numeros que hay en
-- un arbol binario

numeros arbol =
    case arbol of
    Hoja -> 0
    Rama _ h1 h2 -> 1 + numeros h1 + numeros h2 




-- Pregunta #2: Escriba una funcion que acepta un numero y un arbol binario. Esta
-- funcion debe retornar True si el numero existe en el arbol o False de lo
-- contrario.

existe n arbol =
    case (n, arbol) of
    (_, Hoja) -> False 
    (x, Rama y b bs) ->
        if x == y
        then True 
        else existe x b || existe x bs 
    

--(Rama 1 (Rama 2 Hoja Hoja) Hoja)



-- Pregunta #3: Escriba una funcion que incremente por uno todos los numeros que
-- existen en un arbol binario

aumento arbol =
    case arbol of 
    Hoja -> Hoja
    Rama y b bs -> Rama (y+1) (aumento b) (aumento bs)




-- Pregunta #4: Defina un nuevo tipo llamado "ArbolB". Este tipo es igual al
-- arbol binario con la excepcion de que cada Rama en vez de estar conectada
-- solamente a dos arboles, pueda estar conectada a una cantidad arbitraria de
-- arboles. Se recomienda utilizar una lista para lograr esto.

type ArbolB = HojaB | RamaB Int (List ArbolB)


--(RamaB 1 [RamaB 2 [HojaB], RamaB 3 [RamaB 4 [HojaB]]])
-- Pregunta #5: Repita la pregunta #3 con el ArbolB

aumentoB arbolB =
    case arbolB of
    HojaB -> HojaB
    RamaB y ys -> RamaB y (aumentoBAux ys)

aumentoBAux lista =
    case lista of
    [] -> []
    b :: bs -> (aumentoB b) :: (aumentoBAux bs)
