module Programa exposing (..)
 
--ejercicio 1
contarVocales bs  = 
 contarVocalesAux bs 0 


contarVocalesAux bs x = 
    case bs of 
     []-> y
     p :: resto ->
    
    if y == 'a' || y =='e'|| y == 'i'|| y =='o' || y == 'u'
    then contarVocalesAux resto (x+1)
    else contarVocalesAux resto x 

--ejercicio 2
eleminarVocales bs =
 eliminarVocalesAux bs  []
eliminarVocalesAux bs b1 =
case bs of 
 [] -> List.reverse b1
 y :: resto  ->
if  y == 'a' || y =='e'|| y == 'i'|| y =='o' || y == 'u'
then elimiarVocalesAux resto b1 
else eliminarVocalesAux resto (y :: b1)




--ejercicio 3

type fraccion =
  numerador = float 
  | denominddor = float
  case frac of
   entero -> numerador/denominador 
--ejerccio 4

sumarFracciones fraccion1 fraccion2 = 

 










--contarVocales a a 
 -- do contar  for 