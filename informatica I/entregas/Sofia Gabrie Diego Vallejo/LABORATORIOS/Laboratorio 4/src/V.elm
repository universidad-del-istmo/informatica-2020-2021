module V exposing (..)

--Sofia Gabrie, Diego Vallejo


--Escriba una función que determina si un valor es "par" o "impar".

parimpar x = 
    if remainderBy 2 x == 0
    then True
    else False






--Escriba una función que acepta dos numeros y encuentra el maximo comun divisor de estos numeros.

mcd x y =
    if y == 0
    then x
    else mcd y (remainderBy y x)






--LISTADO DE PRIME NUMBERS (just bc si)
    

listprime x =
  List.filter prime (listposaux x)






--Escriba una función que acepta un numero y determina si el numero es primo o no.

primeaux x y =
    if y < x
    then (if remainderBy y x /= 0 then primeaux x (y+1) else False)
    else True


prime x = 
    if x == 0 || x ==1
    then False
    else primeaux x 2 






--Escriba una función que acepta un numero "n" y retorna un numero primo 
--tal que existan "n-1" primos menores al valor retornado. 
--Por ejemplo, si el parametro es "4" el resultado seria "7" ya que "2,3 y 5" son primos menores a "7".

valorprimeaux x y z =
    if prime y == True 
    then if x == z then y else valorprimeaux x (y+1) (z+1)
    else valorprimeaux x (y+1) z


valorprime x =
    if x == 0
    then 0
    else valorprimeaux x 2 1


--ANOTHER WAY


sumar xs = 
    case xs of
    [] -> 0
    b :: bs -> b + sumar bs 


listavalorprime2aux x y =
    if x == 0
    then [0]
    else if prime y == True then y :: listavalorprime2aux (x-1) (y+1) else listavalorprime2aux x (y+1)


valorprime2 x = 
    max (listavalorprime2aux x 2)







--Escriba una función que acepta un numero "n" 
--y calcula la suma de los primeros "n" numeros primos. 
--Por ejemplo, si "n" es "4" el resultado seria "17" ya que "17 = 2 + 3 + 5 + 7".



addvalorprime2 x = 
    sumar (listavalorprime2aux x 2)




--Escriba una función que acepta un numero "n" y retorna una lista con todos los numeros positivos menores a "n".

listposaux x = 
    case x of
    0 -> []
    i -> i :: listposaux (i - 1)

listpos x = 
   List.sort (List.drop 1 (listposaux x))