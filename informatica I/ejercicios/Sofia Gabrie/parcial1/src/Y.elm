module Y exposing (..)



--Las medidas de un circulo con diametro entre 25 y 50

diametro = 44



--El area del circulo

areaC = pi*(diametro/2)^2



--Las medidas de un cuadrado con longitud entre 3 y 13.

medidaS = 4



--El area del cuadrado

areaS = medidaS^2


--¿Es el area del circulo mayor que la del cuadrado?

circulomayor = areaC > areaS 


--¿Es la suma de las areas del circulo y cuadrado mayor al doble del area del circulo?

areaCSmayor = (areaC + areaS) > (2*areaC)


--¿Se puede colocar el circulo adentro del cuadrado?

cdentroS = medidaS >= diametro
