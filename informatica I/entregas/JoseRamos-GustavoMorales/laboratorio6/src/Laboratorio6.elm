module Laboratorio6 exposing (..)

-- Fecha de entrega: 25 de Septiembre, 11:59pm

-- A continuacion se presenta un tipo algebraico para representar una
-- estructura de datos llamada "arbol binario". El arbol binario es
-- una herramienta muy utilizada en la computacion para la almacenacion-----
-- y accesso eficiente de data.

type ArbolBinario = Hoja | Rama Int ArbolBinario ArbolBinario

-- Como puede ver, cada valor que esta almacenado en un arbol
-- binario esta conectado a otros dos arboles que pueden tener
-- mas valores o simplemente el final. Un ejemplo es:

ejemplo1 = Rama 1 (Rama 2 Hoja Hoja) (Rama 3 (Rama 4 Hoja Hoja) Hoja)
ejemplo2 = Rama 1 (Rama 2 Hoja Hoja) (Rama 3 (Rama 4 Hoja Hoja) (Rama 5 Hoja Hoja))

-- Ese arbol binario se podria representar visualmente de la siguiente manera
--                               1
--                              / \
--                             2   3
--                                /
--                               4

-- Pregunta #1: Escriba una funcion que cuente la cantidad de numeros que hay en
-- un arbol binario

contarArbol arbol =
    case arbol of
    Hoja -> 0
    Rama _ x y -> 1 + contarArbol x + contarArbol y

-- Pregunta #2: Escriba una funcion que acepta un numero y un arbol binario. Esta
-- funcion debe retornar True si el numero existe en el arbol o False de lo
-- contrario.

auxcomprobar p arbol =
    case arbol of
    Hoja -> 0
    Rama i x y -> 
                  let t= 0
                  in 
                  if i == p  
                  then (1+t)
                  else auxcomprobar p x + auxcomprobar p y

comprobar p arbol =
            if auxcomprobar p arbol==1
            then True
            else False

-- Pregunta #3: Escriba una funcion que incremente por uno todos los numeros que
-- existen en un arbol binario

incrementar arbol =
    case arbol of
    Hoja -> arbol
    Rama i x y -> Rama (i + 1) (incrementar x) (incrementar y)

-- Pregunta #4: Defina un nuevo tipo llamado "ArbolB". Este tipo es igual al
-- arbol binario con la excepcion de que cada Rama en vez de estar conectada
-- solamente a dos arboles, pueda estar conectada a una cantidad arbitraria de
-- arboles. Se recomienda utilizar una lista para lograr esto.

type ArbolB = HojaB | RamaB Int (ArbolB)

ejemplo3 = RamaB 7 (RamaB 5 (HojaB))
ejemplo4 = RamaB 10 (RamaB 5 (RamaB 2 (RamaB 3 (HojaB))))


-- Pregunta #5: Repita la pregunta #3 con el ArbolB

incrementarB xs  =
      case xs of
      HojaB-> xs
      RamaB i x -> RamaB (i + 1) (incrementarB x) 
