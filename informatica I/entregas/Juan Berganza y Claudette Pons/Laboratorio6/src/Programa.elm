module Programa exposing (..)

type ArbolBinario = Hoja | Rama Int ArbolBinario ArbolBinario

arbol = Rama 

-- Pregunta #1: Escriba una funcion que cuente la cantidad de numeros que hay en
-- un arbol binario

contar x = 
    case x of
    Rama b bs s -> (1) + contar bs + contar s
    Hoja -> 0 

-- Pregunta #2: Escriba una funcion que acepta un numero y un arbol binario. Esta
-- funcion debe retornar True si el numero existe en el arbol o False de lo
-- contrario.

revisar x n =
    case x of 
    Rama b bs s -> 
        if n == b 
        then True
        else revisar bs n || revisar s n
    Hoja -> False

-- Pregunta #3: Escriba una funcion que incremente por uno todos los numeros que
-- existen en un arbol binario

incrementar x =
    case x of
    Rama b bs s -> Rama (b+1) (incrementar (bs)) (incrementar (s)) 
    Hoja -> Hoja

-- Pregunta #4: Defina un nuevo tipo llamado "ArbolB". Este tipo es igual al
-- arbol binario con la excepcion de que cada Rama en vez de estar conectada
-- solamente a dos arboles, pueda estar conectada a una cantidad arbitraria de
-- arboles. Se recomienda utilizar una lista para lograr esto.

type ArbolB = HojaB | RamaB Int (List ArbolB)

-- Pregunta #5: Repita la pregunta #3 con el ArbolB

incrementarB x = 
    case x of
    RamaB b bs -> RamaB (b+1) (List.map incrementarB bs)   
    HojaB -> HojaB