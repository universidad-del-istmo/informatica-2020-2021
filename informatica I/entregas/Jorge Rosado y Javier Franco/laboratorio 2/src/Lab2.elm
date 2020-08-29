module Lab2 exposing (..)
-- Número 1:
> diametro = 5/pi
1.5915494309189535 : Float
> radio = diametro/2
0.7957747154594768 : Float
> area = (pi * (radio * radio))
1.9894367886486921 : Float

-- Número 2:
> sqrt ((5-2)^2 + (1-3)^2) 
3.605551275463989 : Float

-- Número 3:
> 5+5+5+5
20 : number

-- Número 4:
> diametro = 3 *2
6 : number
> circunferencia = diametro * pi
18.84955592153876 : Float
> perimetro = 3+3+3+3
12 : number
> circunferencia > perimetro
True : Bool

-- Número 5:
> s = (4+4+3)/2
5.5 : Float
> area1 = sqrt (s *(s-4)*(s-4)*(s-3))                                                            
5.562148865321747 : Float
> area2 = (14*pi)
43.982297150257104 : Float
> area1 > 10 || area2 > 20
True : Bool

-- Número 6:
Triángulo 1:
> lado1 = 3
3 : number
> lado2 = 4
4 : number
> lado3 = 5
5 : number
> lado1 + lado2 > lado3
True : Bool
> lado1 + lado3 > lado2
True : Bool
> lado2 + lado3 > lado1
True : Bool

Triángulo 2: 
> lado1 = 6
6 : number
> lado2 = 3
3 : number
> lado3 = 9
9 : number
> lado1 + lado2 > lado3
False : Bool
> lado1 + lado3 > lado2
True : Bool
> lado2 + lado3 > lado1
True : Bool

-- Número 7:
y = (x^2) + 2x
Número 1:
> ((3^2) + (2*3)) == 17 || ((5^2) + (2*5)) == 35
True : Bool
Número 2:
> ((7^2) + (2*7)) == 63
True : Bool

-- Número 8:
> ((4 * (3/4)^2) + 3/4) == ((-1) * (4 * (3/4)^2) + 3/4)
False : Bool

-- Número 9:
(((8 + 8 + 10) / 2) * (13-8) * (13-8) * (13-10)) ^ (1/2)> pi * (15/2) ^ 2

-- Número 10:
(20 ^ 2) / (4 * pi)> 8 * 8 || (20 ^ 2) / (4 * pi)> (13 + 13 + 13/2) * (19.5-13) ^ 3
