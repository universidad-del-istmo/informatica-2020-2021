
--Laboratorio#2

-- Pregunta#1
--El area de un circulo que tiene una circumferencia de 5
> pi=3.1416
3.1416
> p=5
5
> 5/(2*pi)
0.795772854596384
> r=0.7958
0.7958
> pi*(r*r)
1.9895678658239997

--Pregunta#2
--La distancia entre los puntos cartesianos (2,3) y (5,1)
> a=(5-2)*(5-2)
9
> b=(1-3)*(1-3)
4
> (a+b)^1/2
2.65

--Pregunta#3
-- El perimetro de un cuadrado con lados de tamaño 5
> a=5
5
> b=5
> a+a+b+b
20
>

--Pregunta#4
--¿La circumferencia de un circulo con radio 3 es mayor que el perimetro de un cuadrado con lados de 3?
> 4
4
> r=3
3
> pi=3.1416
3.1416
> p=3
3
> 2*pi*r
18.8496
> a=3
3
> b=3
3
> a+a+b+b
12
> Circuferencia=18.8496
18.8496
> perimetro=12
12
> Circuferencia>perimetro
true

--Pregunta #5
--¿El area de un triangulo con lados 4, 4 y 3 mayor a 10 o la circunferencia de un circulo con radio 7 mayor a 20?
> a=4
4
> b=4
4
> c=3
3
> a+b+c
11
> p=11
11
> 11/2
5.5
> s=5.5
5.5
> (s*(s-a)*(s-b)*(s-c))
30.9375
> (s*(s-a)*(s-b)*(s-c))^1/2
5.5621
> area=5.56
5.56
> area>10
false
>
> pi=3.1416
3.1416
> r=7
7
> 2*pi*r
43.9824
> circunferencia=43.9824
43.9824
> circunferencia>20
true
>

--Pregunta#6
--¿Son las medidas 3,4,5 y 6,3,9 medidas validas para los lados de un triangulo?



--Pregunta#7
> --dada la parabola y=x^2 + 2(x)

> --punto a (3,17)
> x=3
3
> y=17
17

> y=(x*x)+2*x
15
f(3)=17
y==15
false
--el punto (3,17) no pertenece  la parabola
> x=5
5
> y=35
35
> y==(x*x)+2*x
true
> y=(x*x)+2*x
35

--Pregunta#8
f(x)=4(x)^2+x
g(x)=4(x)^2+x

> x=3/4
0.75

> fx=4*(x*x)+x
3
> gx=4*(x*x)+x
3
> fx==-gx
false

--Pregunta#9
--¿Tiene mayor area un triangulo con lados 8, 8 y 10 o un ciruclo de diametro 15?
--AREA DE UN TRAINGULO

> a=8
8
> b=8
8
> c=10
10
> perimetro=a+b+c
26
> s=perimetro/2
13
> areat=s*(s-a)*(s-b)*(s-c)
975
> areat=975^1/2
31.22

--AREA DE UN CIRCULO

> pi=3.1416
3.1416
> d=15
15
> radio=d/2
7.5
> areac=pi*(radio*radio)
176.715
> areat==areac
false
> areat>areac
false

--PREGUNTA#10
--¿Tiene mayor area un circulo con circumferencia de 20 que un cuadrado con lados de 8 o que un tirangulo equilatero de lados que miden 13?
AREA DEL CIRCULO

c=2*pi*r
r=c/2*pi

> pi=3.1416
3.1416
> c=20
20
> r=20/2*pi
31.416
> r=c/2*pi
31.416
> areac=pi*(r*r)
3100.6494199296

--AREA DE CUADRADO


> a=8
8
> areacua=(a*a)
64


--AREA DEL TRIANGULO EQULATERO
> l=13
13
> areat=((sqrt3)/4)*(l*l)
>73.18
>

--COMPARACION DE AREAS

> areac=3100.65
3100.65
> areacua=64
64
> areat=41.18
41.18
> areat=73.18
73.18
>
> areac>areacua
true
> areac>areat
true
> areac>areacua>areat
false
