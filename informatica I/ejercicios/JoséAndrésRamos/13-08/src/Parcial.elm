module Parcial exposing (..)

--Declaro el diametro del circulo entre 25 y 50
diametro= 28
pi = 3.141592653589793238462643383

--2) El area del circulo

areacirculo= pi*((diametro/2)^2)

--3) Medidas de un cuadrado

ladocuadrado= 8

--4) Area del cuadrado

areacuadrado= (ladocuadrado)^2

--5) ¿Es el area del circulo mayor que la del cuadrado?

circulomayorcuadrado= areacirculo>areacuadrado

--6) ¿Es la suma de las areas del circulo 
--y cuadrado mayor al doble del area del circulo?

sumaydoble= areacuadrado+areacuadrado > areacuadrado*2

--7) ¿Se puede colocar el circulo adentro del cuadrado?

circulodentrocuadrado = areacirculo <= areacuadrado


--1) Lista de caracteres de mi nombre:
--Jose Ramos

nombrecompleto= ["J","O","S","E","","R","A","M","O","S" ]

--2) Extraer solo nombre

nombre= List.take 4 nombrecompleto

--3) Extraer de la primera lista los
-- caracteres que correspondan al apellido

apellido= List.drop 5 nombrecompleto

--4) Extraer de la lista con su nombre el caracter 
--que aparece mas cerca del final del abecedario.


finalnombre = List.head (List.reverse (List.sort nombre))

--5) Extraer de la lista con su apellido 
--el caracter que aparece mas cerca del principio del abecedario.

finalapellido= List.head (List.sort apellido)

--6)Construir una nueva lista con los valores del inciso 5 y 6.

nuevalista =  [finalapellido] ++ [finalnombre]





