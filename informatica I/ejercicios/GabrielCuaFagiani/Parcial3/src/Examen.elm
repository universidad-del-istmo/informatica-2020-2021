module Examen exposing (..)

-- EJERCICIO #1 y #2

type Diccionario a = Vacio | Agregar String a (Diccionario a)

ejemplo = Agregar "futbol" ["Messi", "Neymar"] (Agregar "basket" ["LeBron", "Kawhi"] Vacio)

-- En la terminal:
-- ejemplo
-- Agregar "futbol" ["Messi","Neymar"] (Agregar "basket" ["LeBron","Kawhi"] Vacio)
--     : Diccionario (List String)

-- EJERCICIO #3

agregar st va dicc =
    case dicc of
    Vacio -> Agregar st va Vacio
    Agregar i p d ->
        if i == st
        then Agregar i va dicc
        else Agregar st va dicc

-- En la terminal:
-- agregar "tenis" ["Nadal", "Federer"] ejemplo  
-- Agregar "tenis" ["Nadal","Federer"] (Agregar "futbol" ["Messi","Neymar"] (Agregar "basket" ["LeBron","Kawhi"] Vacio))
--     : Diccionario (List String)

-- Ejercicio #4

consultar st dicc =
    case dicc of
    Vacio -> Nothing
    Agregar i v r ->
        if i == st
        then Just v
        else consultar st r

-- En la terminal:
-- consultar "futbol" ejemplo
-- Just ["Messi","Neymar"] : Maybe (List String)

-- Ejercicio #5

fun x =
    case x of
    Nothing -> ["Jugadores"]
    Just list -> "Jugadores" :: list

actualizar st f dicc =
    case dicc of
    Vacio -> Vacio
    Agregar i v r ->
        if st == i
        then Agregar i (fun (Just v)) r
        else actualizar st fun r

-- En la terminal:
-- actualizar "basket" fun ejemplo
-- Agregar "basket" ["Jugadores","LeBron","Kawhi"] Vacio
--     : Diccionario (List String)