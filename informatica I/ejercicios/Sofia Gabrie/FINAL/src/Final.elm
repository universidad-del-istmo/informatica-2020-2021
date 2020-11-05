module Final exposing (..)

--Escriba una funcion que acepta una lista de parejas de numeros. 
--Estas parejas corresponden a coordenadas cartesianas. 
--Esta funcion debe filtrar todas las coordenadas cuya distancia del origen (el punto (0,0)) sea mayor a 1.44.


coordsaux lcoords newl =
    case lcoords of
    [] -> newl 
    (x,y) :: resto -> if (sqrt ((x)^2 + (y)^2)) >= 1.44 
                        then coordsaux resto ((x,y) :: newl)  
                        else coordsaux resto newl

coords lcoords =
    List.reverse (coordsaux lcoords [])



--Escriba una funcion que acepta como parametros dos listas de numeros 
--y retorna una lista con los numeros que aparecen en ambas listas.


bothaux lista listb xss =
    case (lista, listb) of
    (resto, []) -> xss
    ([], resto) -> xss
    ((a :: bs), (c :: cs)) -> if a == c then bothaux lista cs (a :: xss) else bothaux lista cs xss


both2 lista listb =
    case lista of
    a :: ab -> (bothaux lista listb []) ++ both2 ab listb 
    [] -> []



both lista listb =
    bothA lista listb []

bothA lista listb xss =
    case lista of 
    a :: bs -> bothA bs listb ((bothB listb a xss) ++ xss)
    [] -> xss

bothB listb a xss =
    case listb of 
    c :: cs -> if a == c then bothB cs a (a :: xss) else bothB cs a xss
    [] -> xss



--Escriba una funcion que acepta dos numeros y determina si esos numeros son coprimos. 
--Dos numeros son coprimos si el unico divisor en comun que existe entre ambos es 1.


mcd x y =
    if y == 0
    then x
    else mcd y (remainderBy y x)

coprimos x y = 
    if mcd x y == 1 then True else False


--Escriba un tipo que represente un modelo para un juego de Totito. 
--No debe implementar el juego, nadamas definir el tipo. 
--Describa brevemente como los valores que constituyen el tipo corresponden a un juego de Totito.


type Totito = X | O | Nada

type Tablero = S1 Totito | S2 Totito | S3 Totito | S4 Totito | S5 Totito | S6 Totito | S7 Totito | S8 Totito | S9 Totito





--Escriba un tipo para representar un modelo de un programa de glosario. 
--Un glosario consiste en un banco de palabras con una definición correspondiente a cada palabra. 
--El usuario escribe en una caja de texto una consulta y 
--el programa le muestra al usuario la definición (si existe en el glosario) de dicha palabra. 
--Solo debe definir el tipo que corresponde al modelo, no hacer el programa entero. 
--Describa brevemente como su tipo representa este programa.


type Palabra = Palabra String String

type Modelo = Modelo (List (Palabra))

--El type palabra representa el valor en si, posee un string que es la palabra 
--y el otro string que seria el significado de la palabra.
--El type Modelo es el banco de palabras en si; es por ello que posee
--una lista con el type palabra (Las palabras y las definiciones)



