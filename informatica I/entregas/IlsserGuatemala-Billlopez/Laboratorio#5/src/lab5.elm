module lab5 exposing(..)

--Bill lopez e Ilsser Guatemala

--EJERCICIO 1

existe x=
if x==maybe.withdefault 0(list.length xs)
then true  
else False


--EJERCICIO 2


MayorQueaux list(x)=
case list of
[]-> nothing
head::tail -> MayorQueaux tail list(x)

mayoresQue x xs = 
List.reverse (mayoresQueaux list [])


--EJERCICIO # 3

PromedioAux ns lista(n)=
case lista of
[]->nothing
n::ns ->PromedioAux ns + n 
then (tofloat(promedioAux ns) / (tofloat(list.length(n))


--EJERCICIO # 4
type Natural = Cero | Sig Natural

intoNat n =
    case n of 
    0 -> Cero
    b -> Sig (intoNat (b-1))

natoInt n = 
    case n of 
    Cero -> 0
    Sig b -> 1 + natoInt b


--EJERCICIO # 5

MayorQue a b=
case (a,b) of
(a ,b )-> mayoresQue a b 
(a,0)->true
(0,b)->False
(0,0)->False 

--EJERCICIO # 6


