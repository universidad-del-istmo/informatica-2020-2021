# Ejercicio #1: Expressiones en Elm

Sofia Gabrie-Diego Vallejo


Escriba en un documento de texto las expresiones en Elm que evaluarian lo que se les solicita a continuación:


1. El area de un circulo que tiene una circumferencia de 5


`pi* (5/(2*pi))^2`




2. La distancia entre los puntos cartesianos (2,3) y (5,1)


`sqrt ((5-2)^2 + (1-3)^2)`




3. El perimetro de un cuadrado con lados de tamaño 5


`5*4`




4. ¿La circumferencia de un circulo con radio 3 es mayor que el perimetro de un cuadrado con lados de 3?


`(2*pi*3) > (3*4)`




5. ¿El area de un triangulo con lados 4, 4 y 3 es mayor a 10 o la circunferencia de un circulo con radio 7 es mayor a 20?


`(sqrt (4^2-(3/2)^2)*3)/2 > 10 || (2*pi*7) > 20`




6. ¿Son las medidas 3,4,5 y 6,3,9 medidas validas para los lados de un triangulo?


`5 < (3+4) && 9 < (3+6)`




7. Dada la parablola y=x^2 + 2x :
El punto (3, 17) o (5, 35) se encuentra en la parabola
y el punto (7,63) se encuentra en la parabola.



`17 == 3^2 + (2*3)`     
`35 == 5^2 + (2*5)`
`63 == 7^2 + (2*7)`


`(17 == 3^2 + (2*3) || 35 == 5^2 + (2*5)) && 63 == 7^2 + (2*7)`  




8. Dados los polinomios f(x)=4x^2 + x y g(x)=4x^2 + x ¿se cumple: f(3/4)= -g(3/4)


`(4*(3/4))^2 + (3/4) == -((4*(3/4))^2 + (3/4))` 




9. ¿Tiene mayor area un triangulo con lados 8, 8 y 10 o un ciruclo de diametro 15?


`max ((sqrt ((8^2-(10/2)^2))*10)/2)  (pi*(15/2)^2)`




10. ¿Tiene mayor area un circulo con circumferencia de 20 que un cuadrado con lados de 8 o que un tirangulo equilatero de lados que miden 13?


`List.maximum [(pi*(20/(2*pi))^2),(8*8),(sqrt ((13^2-(13/2)^2))*13)/2]`