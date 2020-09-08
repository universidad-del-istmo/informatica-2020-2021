module Z exposing (..)

--Una lista que contenga los caracteres de uno de sus nombres y uno de sus apellidos separados por el caracter
--espacio. El orden en la lista debe ser el mismo que el orden escrito de los caracteres en su nombre y apellido.
--Puede ignorar los caracteres especiales (tildes) y reemplazar la letra "ñ" por "n" si gusta.

list2names = ['S','o','f','i','a',' ','G','a','b','r','i','e']



--Extraer de la lista anterior los caracteres que corresponden al nombre

listname = List.take 5 list2names 



--Extraer de la primera lista los caracteres que correspondan al apellido

listsurname = List.drop 6 list2names



--Extraer de la lista con su nombre el caracter que aparece mas cerca del final del abecedario.

nameZ = List.head listname



--Extraer de la lista con su apellido el caracter que aparece mas cerca del principio del abecedario.

surnameA = List.head (List.drop 1 (List.take 2 listsurname))



--Construir una nueva lista con los valores del inciso 4 y 5.

newlist = [Maybe.withDefault 'z' nameZ, Maybe.withDefault 'a' surnameA]
