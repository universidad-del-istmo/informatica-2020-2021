module Examen exposing (..)

-- EXAMEN PARCIAL GABRIEL EDUARDO CUÁ FAGIANI

-- PREGUNTA 1

-- 1. Las medidas de un círculo con diámetro entre 25 y 50.

numero27 = 27
diametroCirculo = numero27

-- 2. El área del círculo.

radioCirculo = diametroCirculo / 2
areaCirculo = pi * radioCirculo ^2

-- 3. Las medidas de un cuadrado con longitud entre 3 y 13.

numero11 = 11
longitudCuadrado = numero11

-- 4. El area del cuadrado.

areaCuadrado = numero11 ^2

-- 5. ¿Es el area del circulo mayor que la del cuadrado?

comparacion1 = areaCirculo > areaCuadrado

-- 6. ¿Es la suma de las areas del circulo y cuadrado mayor al doble del area del circulo?

comparacion2 = (areaCirculo + areaCuadrado) > areaCirculo * 2

-- 7. ¿Se puede colocar el circulo adentro del cuadrado?

comparacion3 = areaCirculo < areaCuadrado

-- PREGUNTA 2

-- 1. Una lista que contenga los caracteres de uno de sus nombres
-- y uno de sus apellidos separados por el caracter espacio. El
-- orden en la lista debe ser el mismo que el orden escrito de
-- los caracteres en su nombre y apellido. Puede ignorar los caracteres
-- especiales (tildes) y reemplazar la letra "ñ" por "n" si gusta.

listaNombreYApellido = ["g","a","b","r","i","e","l"," ","c","u","a"]

-- 2. Extraer de la lista anterior los caracteres que corresponden al nombre.

listaNombre = List.take 7 listaNombreYApellido

-- 3. Extraer de la primera lista los caracteres que correspondan al apellido.

listaApellido = List.drop 8 listaNombreYApellido

-- 4. Extraer de la lista con su nombre el caracter que aparece mas cerca del final del abecedario.

listaOrdenada = List.sort listaNombre
listaLetraCercana = List.drop 6 listaOrdenada

-- 5. Extraer de la lista con su apellido el caracter que aparece mas cerca del principio del abecedario.

listaOrdenada2 = List.sort listaApellido
listaLetraCercana2 = List.take 1 listaOrdenada2

-- 6. Construir una nueva lista con los valores del inciso 5 y 6.

listaNueva = List.concat [listaLetraCercana,listaLetraCercana2]