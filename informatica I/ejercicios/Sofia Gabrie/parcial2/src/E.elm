module E exposing (..)
--SOFIA GABRIE

--Una función llamada contarVocales que acepta como parametro una lista de caracteres 
--y retorna el numero de vocales que haya en dicha lista. 
--Puede asumir que todos los caracteres son minusculas.

contarVocalesaux xs xss =
    case xs of
    [] -> List.length xss
    b :: bs -> case b of 
                'a' -> contarVocalesaux bs (b :: xss)
                'e' -> contarVocalesaux bs (b :: xss)
                'i' -> contarVocalesaux bs (b :: xss)
                'o' -> contarVocalesaux bs (b :: xss)
                'u' -> contarVocalesaux bs (b :: xss)
                _ -> contarVocalesaux bs xss

contarVocales xs =
    contarVocalesaux xs []


--ANOTHER WAY

esVocal a = a == 'a' || a == 'e' || a == 'i' || a == 'o' || a == 'u'

contarVocales2 xs =
    case xs of 
    [] -> 0
    b :: bs -> 
        if esVocal b
        then 1 + contarVocales2 bs
        else contarVocales2 bs








--Una función llamada eliminarVocales que acepta una lista de caracteres 
--y retorna esa lista sin las vocales. 
--Puede asumir que todos los caracteres son minusculas.

eliminarVocalesaux xs xss =
    case xs of
    [] -> xss
    b :: bs -> case b of 
                'a' -> eliminarVocalesaux bs xss
                'e' -> eliminarVocalesaux bs xss
                'i' -> eliminarVocalesaux bs xss
                'o' -> eliminarVocalesaux bs xss
                'u' -> eliminarVocalesaux bs xss
                _ -> eliminarVocalesaux bs (b :: xss) 

eliminarVocales xs =
    List.reverse (eliminarVocalesaux xs [])



--ANOTHER WAY

eliminarVocales2 xs =
    case xs of 
    [] -> []
    b :: bs ->
        if not (esVocal b)
        then b :: eliminarVocales2 bs
        else eliminarVocales2 bs





--3.Defina un tipo algebraico llamado Fracción que se utilizara para representar fracciones de numeros enteros. 
--Recuerde que una fracción esta compuesta de un denominador y un numerador.


type Fraccion = Fraccion Int Int





--Defina una función llamada sumarFracciones que acepta dos valores del tipo Fracción del inciso anterior 
--y retorna una nueva fracción que corresponde a la suma de las dos fracciones que se dieron como parametros.

--MINE prob wrong (returns float)
sumarFracciones x y =
    case (x,y) of
    (Fraccion n1 d1, Fraccion n2 d2) -> (toFloat (n1*d2 + n2*d1))/(toFloat(d1*d2))


--ANOTHER WAY
sumar1 (Fraccion n1 d1, Fraccion n2 d2) = 
    Fraccion (n1*d2 + n2*d1) (d1*d2)


--ANOTHER WAY
sumar2 f1 f2 =
    case (f1,f2) of
    (Fraccion n1 d1, Fraccion n2 d2) ->
        Fraccion (n1*d2 + n2*d1) (d1*d2)
