module Programa exposing (..)


sumar n =
    if n == 0
   then 0
   else n +  sumar (n-1)

multiplicar a b =
    if a == 0 | | b == 0
   then 0
   else  if b ==1
   then a
   else a + multiplicar a (b - 1)

fib n = 
  if n== 0 
  then 0
  else if n == 1
  then 1 
else fib (n - 1) +fib (n - 2)

fibAux nFinal  fn1 fn2 = 
  if nFinal  == n
  then fn1 + fn2 
  else fibAux n (i +1)  (fn1 +fn2) fn1

fibRapido n = 
   if n == 0 
   then 0 
   else if n == 1
   then 1 
   else fibAux n 2 1 
 

