module longitud exposing (..)



type Lista a = Nil | Cons a (Lista a)

-- Calcula la longitud de un valor de tipo (Lista a)
longitud xs = 
    longitudaux xs 0

longitudaux xs x =
    case (xs, x) of 
    (Nil, _) -> x 
    ((Cons b bs), _) -> longitudaux bs (x+1)
