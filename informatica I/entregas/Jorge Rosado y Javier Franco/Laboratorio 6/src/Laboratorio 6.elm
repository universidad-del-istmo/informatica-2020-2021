module Laboratorio 6 exposing(..)

type ArbolBinario = Hoja | Rama Int ArbolBinario ArbolBinario

arbolBinario= Rama 1 (Rama 2(rama 4 hoja )Hoja) (Rama 3 (Rama 5 hoja) Hoja)

-- Pregunta #1: Escriba una funcion que cuente la cantidad de numeros que hay en
-- un arbol binario

numerosadentro n ns nss=
    case nss of 
    [] -> nothing
    ns :: n ->
    ns == n
    then string.length "arbolBinario"
    else nothing

-- Pregunta #2: Escriba una funcion que acepta un numero y un arbol binario. Esta
-- funcion debe retornar True si el numero existe en el arbol o False de lo
-- contrario.

comprobar p valor =
    case valor of
hoja -> 0
rama i a e -> 
    if  i==p
    then p
    else i +sumararbol a + sumararbol e

sumadearbol a =
    case a of
    b -> a

sumadearbol e =
    case e of
    b-> e

-- Pregunta #3: Escriba una funcion que incremente por uno todos los numeros que
-- existen en un arbol binario

incrementar p ps=
    case ps of
    []_>nothing
    if arbolbinario=p 
    then p=ps
    else arbolbinario.map+ (p+1) 

-- Pregunta #4: Defina un nuevo tipo llamado "ArbolB". Este tipo es igual al
-- arbol binario con la excepcion de que cada Rama en vez de estar conectada
-- solamente a dos arboles, pueda estar conectada a una cantidad arbitraria de
-- arboles. Se recomienda utilizar una lista para lograr esto.

type ArbolB = Hoja | Rama Int ArbolBinario ArbolBinario

in 
listBaux=(1,2,3,4,5,6,7,8)
let 

if ArbolB= p
then list.take any(1,2,3,4,5)
else ArbolB=Rama 1 (rama listB.take any(1,2,3,4,5)hoja hoja )

-- Pregunta #5: Repita la pregunta #3 con el ArbolB
incrementarB y ys=
    case ys of
    []_>nothing
    if y=listB 
    then y:ys
    else ListB.map + 1


