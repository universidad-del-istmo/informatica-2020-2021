module Practica exposing (..)
-- Recursiones --



-- Contar elementos--
listaWuiquique lista =
    case lista of
    [] -> 0
    uno :: resto -> 1 + listaWuiquique resto 
-- sumar elementos --
slista lista = 
    case lista of 
    [] -> 0 
    uno :: resto -> uno + slista resto   
--Verificar que esta en la lista --
estaLista x lista = 
    case lista of 
    [] -> False 
    uno :: resto -> 
        if x == uno then True else estaLista x resto 
-- Sumarle uno a la lista --
mas1 lista = 
    case lista of
    [] -> []
    uno :: resto -> (uno + 1) :: mas1 resto 

-- Types --

type Fraccion = Frac Int Int 
-- sumar fracciones --
sFrac f1 f2 = 
    case (f1, f2) of   
    (Frac _ 0, s) -> s
    (Frac 0 _, s) -> s
    (p, Frac 0 _) -> p
    (p, Frac _ 0) -> p
    (Frac x y, Frac z w) -> Frac ((y*z)+(w*x)) (y*w)    
        

