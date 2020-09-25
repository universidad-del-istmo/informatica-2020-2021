module lab6 exposing(..)

type ArbolBinario = Hoja | Rama Int ArbolBinario ArbolBinario

ArbolBinario=Rama 1 (Rama 2(rama 4 hoja )Hoja) (Rama 3 (Rama 5 hoja) Hoja)

-- Pregunta #1: Escriba una funcion que cuente la cantidad de numeros que hay en
-- un arbol binario

Cant.numeros x xs xss=
case xss of 
[]->nothing
x:xs->
if x==xs
then string.length "arbol binario"

-- Pregunta #2: Escriba una funcion que acepta un numero y un arbol binario. Esta
-- funcion debe retornar True si el numero existe en el arbol o False de lo
-- contrario.

comprobar p valor =
case valor of
hoja -> 0
rama i x y -> 
    if  i==p
    then p
    else i +sumararbol x + sumararbol y

sumadearbol x =
case x of
b -> x

sumadearbol y =
case y of
b-> y

-- Pregunta #3: Escriba una funcion que incremente por uno todos los numeros que
-- existen en un arbol binario

incremento n ns=
case ns of
[]_>nothing
if arbolbinario=n 
then n=ns
else arbolbinario.map+ (n+1) 

-- Pregunta #4: Defina un nuevo tipo llamado "ArbolB". Este tipo es igual al
-- arbol binario con la excepcion de que cada Rama en vez de estar conectada
-- solamente a dos arboles, pueda estar conectada a una cantidad arbitraria de
-- arboles. Se recomienda utilizar una lista para lograr esto.

type ArbolB = Hoja | Rama Int ArbolBinario ArbolBinario

in 
listB=(1,2,3,4,5,6,7,8)
let 

if ArbolB= n
then list.take any(1,2,3,4,5)
else ArbolB=Rama 1 (rama listB.take any(1,2,3,4,5)hoja hoja )

-- Pregunta #5: Repita la pregunta #3 con el ArbolB
incremento x xs=
case xs of
[]_>nothing
if x=listB 
then x:xs
else ListB.map + 1


