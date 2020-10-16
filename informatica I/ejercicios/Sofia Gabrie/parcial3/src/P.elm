module P exposing (..)

--SOFIA GABRIE

-- Diccionario que contiene los valores 1,2,3 indexados con "uno", "dos" y "tres"

d1 = agregar "uno" 1 (agregar "dos" 2 (agregar "tres" 3 vacio))



-- Diccionario con valores de tipo List String

d2 = agregar "verbos" ["correr", "saltar"] (agregar "fisicos" ["Bohr", "Feynman"] vacio)






--1. Un tipo algebraico generico para representar un diccionario. 
--Un diccionario es una coleccion de valores los cuales pueden ser 
--buscados utilizando valores de tipo String como indice. 
--Su tipo debe permitir las operaciones que se presentan a continuación.

type Diccionario a = Vacio | Valor String a (Diccionario a)






--2. Un binding llamadao "vacio" de tipo "Diccionario a" que representa un diccionario que no contiene elementos.

vacio = Vacio







--3. Una funcion llamada "agregar" que acepta un String, un valor, y un Diccionario 
--y produce un nuevo diccionario que tiene el almacenado el valor pasado como parametro con el String de indice. 
--Si el indice pasado como parametro a esta función ya existe en el Diccionario, 
--el valor ubicado en dicho indice debe ser reemplazado.


agregar str val diccionario =
    case diccionario of 
    Vacio -> Valor str val Vacio
    Valor a b c -> if a == str then Valor a val c else Valor a b (agregar str val c)









-- Produce Just 1
c1 = consultar "uno" d1


-- Produce Just 42
c2 = consultar "uno" (agregar "uno" 42 d1)


-- Produce Nothing
c3 = consultar "no existe" d1


-- Produce Just ["correr", "saltar"]
c4 = consultar "verbos" d2




--4. Una funcion llamada "consultar" que acepta un indice de tipo String como primer parametro y 
--un Diccionario como segundo parametro. 
--Esta funcioón debe buscar en el diccionario el valor ubicado en el inidice proporcionado 
--y retornar un Maybe como resultado. 
--En caso que el indice exista, el maybe tendra dicho valor, de lo contrario sera nothing.

consultar str diccionario =
    case diccionario of
    Vacio -> Nothing
    Valor a b c -> if str == a then Just b else consultar str c






--5. Una funcion llamada "actualizar" que toma como parametro un indice de tipo String, 
--una función que convierte valores de tipo Maybe a  a valores de tipo a y un Diccionario a. 
--Esta función se debe utilizar para actualizar valores del diccionario. 
--Priemero se debe ubicar el valor en el indice proporcionado. 
--Si se encuentra, se modifica utilizando la función proporcionada como parametro, 
--de lo contrario se construye un nuevo valor llamado a la función proporcionada como parametro con Nothing.

actualizador valores =
    case valores of
    Nothing -> ["dormir"]
    Just xs -> "dormir" :: xs


d3 = actualizar "verbos" actualizador d2


-- Produce Just ["dormir", "correr", "saltar"]
c6 = consultar "verbos" d3

--BASICALLY FUNCION POLIMORFICA


actualizar str funcion diccionario =
    case diccionario of
    Vacio -> Valor str (funcion Nothing) Vacio
    Valor a b c -> if a == str then Valor a (funcion (Just b)) c else actualizar str funcion c 
