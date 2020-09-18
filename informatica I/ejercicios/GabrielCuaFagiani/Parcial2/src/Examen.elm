module Examen exposing (..)

-- EXAMEN PARCIAL GABRIEL EDUARDO CUÁ FAGIANI

-- Una función llamada contarVocales que acepta como parametro una lista de caracteres y
-- retorna el numero de vocales que haya en dicha lista. Puede asumir que todos los
-- caracteres son minusculas.

contarVocales xs =
    case xs of
    [] -> 0
    b :: bs -> vocales bs b

vocales bs b =
    if b == 'a' || b == 'e' || b == 'i' || b == 'o' || b == 'u'
    then contarVocales bs + 1
    else contarVocales bs

-- Una función llamada eliminarVocales que acepta una lista de caracteres y retorna esa
-- lista sin las vocales. Puede asumir que todos los caracteres son minusculas.

eliminarVocales xs =
    case xs of
    [] -> []
    b :: bs -> eliminarAux b bs

eliminarAux b bs =
    if b == 'a' || b == 'e' || b == 'i' || b == 'o' || b == 'u'
    then eliminarVocales bs
    else b :: eliminarVocales bs

-- Defina un tipo algebraico llamado Fracción que se utilizara para representar fracciones
-- de numeros enteros. Recuerde que una fracción esta compuesta de un denominador y un numerador.

type Fraccion = Fraccion Int Int

-- Defina una función llamada sumarFracciones que acepta dos valores del tipo Fracción del
-- inciso anterior y retorna una nueva fracción que corresponde a la suma de las dos fracciones
-- que se dieron como parametros.

sumarFracciones f1 f2 =
    case (f1 f2) of
    (Fraccion n1 d1, Fraccion n2 d2) -> Fraccion ((n1*d2) + (n2*d1)) (d1*d2)
