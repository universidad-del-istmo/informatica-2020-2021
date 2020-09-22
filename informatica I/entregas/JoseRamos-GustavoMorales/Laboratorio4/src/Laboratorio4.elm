--EJERCICIO 1
module Laboratorio4 exposing (..)
par n = 
    if modBy 2 n == 0
    then "Es par"
    else "Es impar"

--EJERCICIO 2
mcd a b =
 if b==0
 then a
 else mcd (b) (modBy b a)

--EJERCICIO 3
primo x =
 if x == 3
 then "Primo"
 else if x== 2
 then "Primo"
 else if x == 7
 then "Primo"
 else if modBy 2 x == 0
 then "No es Primo"
 else if modBy 3 x==0
 then "No es Primo"
 else if modBy 5 x == 0
 then "No es Primo"
 else if modBy 7 x ==0
 then "No es Primo"
 else "Primo"



