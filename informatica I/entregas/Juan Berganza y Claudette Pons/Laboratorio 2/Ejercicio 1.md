# Ejercicio #1: Expresiones en Elm

1. El área de un círculo que tiene una circunferencia de 5

`pi * (5/(2*pi))^2`

2. La distancia entre los puntos cartesianos (2,3) y (5,1)

`sqrt((5-2)^2+(1-3)^2)`

3. El perímetro de un cuadrado con lados de tamaño 5

`5*4`

4. ¿La circunferencia de un círculo con radio 3 es mayor que el perímetro de un cuadrado con lados de 3?

`2*pi*3 > 3*4`

5. ¿El área de un triángulo con lados 4, 4 y 3 es mayor a 10 o la circunferencia de un circulo con radio 7 es mayor a 20?

`(sqrt(4^2-1.5^2)*3)/2 > 10 || 2*pi*7 > 20`

6. ¿Son las medidas 3,4,5 y 6,3,9 medidas válidas para los lados de un triángulo?

`5 > 3+4 && 9 > 6+3`

7. Dada la parábola ![](../../../laboratorios/laboratorio%202/parabola.png):
    - El punto (3, 17) o (5, 35) se encuentra en la parábola
    - y el punto (7,63) se encuentra en la parábola

`(3^2 + 2*3 == 17 || 5^2 + 2*5 == 35) && 7^2 + 2*7 == 63`

8. Dados los polinomios ![](../../../laboratorios/laboratorio%202/poli1.png) y ![](../../../laboratorios/laboratorio%202/poli2.png), ¿se cumple: ![](../../../laboratorios/laboratorio%202/resp.png)?

`4*(3/4)^2 + (3/4) == -(4*(3/4)^2 + (3/4))`

9. ¿Tiene mayor área un triángulo con lados 8, 8 y 10 o un círculo de diámetro 15?

`(sqrt(8^2-5^2)*10)/2 > pi*(15/2)^2`

10. ¿Tiene mayor área un circulo con circumferencia de 20 que un cuadrado con lados de 8
o que un triángulo equilatero de lados que miden 13?

`(pi * (20/(2*pi))^2 > 8*8) || (pi * (20/(2*pi))^2 > sqrt(3)/4 * 13^2)`

