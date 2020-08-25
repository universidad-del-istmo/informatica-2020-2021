module Programa exposing (..)

valor = 42

maybeVacio = List.head []

maybeConValor = List.head [1,2,3]

-- Esto produce 1, ya que se utiliza
-- el valor predeterminado 0
valor1 = Maybe.withDefault 0 maybeVacio + 1

-- Esto produce 2, ya que se utiliza
-- el valor 1 que esta dentro de "maybeConValor"
valor2 = Maybe.withDefault 0 maybeConValor + 1

lista1 = [1,2,3]

-- Extendemos la lista1 agregando 4 al
-- principio
lista2 = 4 :: lista1

-- Extendemos la lista2 agregando 6
-- al principio
lista3 = 6 :: lista2

-- Obtenemos [6,4] ya que se extraen los
-- primeros dos elementos de la lista
lista4 = List.take 2 lista3

-- Retorna una lista con [2,3]
-- ya que se eliminan los 3 primeros
-- elementos de la lista
lista5 =  List.drop 3 lista3

-- Ejercicio: Colocar su respuesta en la carpeta
-- "informatica I/ejercicios/[Su Nombre]/13-08/"
-- de este repositorio y entregar como un pull request

-- Escriban como extraerian el
-- 3er valor de "lista3" utilizando
-- las funciones que se estudiaron en clase
-- El valor que deberia ser asignado es "Just 1"
lista3menos2 = List.drop 2 lista3
valorlista3 = List.head lista3menos2

-- A "valorLista3", deben sumarle 41
-- y agregarlo al principio de
-- "lista5"
-- Deberia quedarles [42,2,3]
valorlista3n = Maybe.withDefault 0 valorlista3
valorsuma = valorlista3n + 41
lista5plus = valorsuma :: lista5
