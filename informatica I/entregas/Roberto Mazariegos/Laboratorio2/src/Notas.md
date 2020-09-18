1
Area de un circulo, 
> (5/(2*3.1416))
0.795772854596384 : Float
 ((0.79577285456384^2)*3.1416)
1.9894321363282395 : Float
2
Distancia entre puntos cardinales
> ((((5-2)^2)+((1-3)^2)))^1/2
 6.5: Float
 3
Perimetro de un cuadrado
> 5+5+5+5
20 : number
4
La circumferencia de un circulo con radio 3 es mayor que el perimetro de un cuadrado con lados de 3 
> (2*3.1416*3)>(3+3+3+3)
True : Bool
5
El area de un triangulo  con lados 4,4,3 mayor a 10 o la circunferencia con un radio 7 mayor a 20
> s=5.5
5.5 : Float
>  (15>(s*(s-8)*(s-8)*(s-10))^1/2) || ((pi*7^2) > 20)
|
True : Bool
6
Las medidas 3,4,5 y 3,6,9 medidas validas para triangulos 
>  ((5^2==( 3^2+4^2) && (9^2==3^2+6^2)))
|
False : Bool
7
Dada para parabola y= x^2+2x en los puntos 
El punto (3, 17) o (5, 35) se encuentra en la parabola
y el punto (7,63) se encuentra en la parabola
> ((17==3^2+(2*3)) && (35==5^2+(2*5)))
False : Bool
> 63==7^2+(2*7)
True : Bool
8
Dados los polinomios f(x)= 4x^2+x y g(x)=4x^2+x , ¿se cumple: f(3/4)=-g(3/4)?
> (3/4*4)^2+3/4 == (3/4*4)^2+3/4
True : Bool
9
¿Tiene mayor area un triangulo con lados 8, 8 y 10 o un ciruclo de diametro 15?
> (8+8+10)/2
13 : Float
> s= 13
13 : number
> (s*(s-8)*(s-8)*(s-10))^1/2
487.5 : Float
> areaT= 487.5
487.5 : Float
> (15^2*pi)/4
176.71458676442586 : Float
> areat=176.7145
176.7145 : Float
> areaT > areat
True : Bool
10
¿Tiene mayor area un circulo con circumferencia de 20 que un cuadrado con lados de 8 o que
 un tirangulo equilatero de lados que miden 13?
 > (20/2*pi)
31.41592653589793 : Float
> 31.4159^2*pi
3100.622430055894 : Float
> areac=3100.62
3100.62 : Float
> 8*8
64 : number
> s=19.5
19.5 : Float
> (s*(s-13)*(s-13)*(s-13))^1/2
2677.59375 : Float
> areaC=64
64 : number
> areat=2677.59
2677.59 : Float
> ((areac>areaC) && (areac>areat))
True : Bool


