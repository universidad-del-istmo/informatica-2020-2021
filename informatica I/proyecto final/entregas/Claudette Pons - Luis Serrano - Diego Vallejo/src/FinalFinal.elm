module FinalFinal exposing (..)

import Svg exposing (svg, path, polygon, line)
import Svg.Attributes exposing (width, height, viewBox, points, d, stroke, x1, y1, x2, y2)
import Html exposing (div, button)
import Browser
import Html.Events exposing (onClick, onDoubleClick, onInput)


---SIERPINSKI---
type Triangulo = Triangulo (Float,Float) (Float,Float) (Float,Float)

sierpinski n =
    sierpinskiAux n (Triangulo (50,500) (400,20) (750,500))

sierpinskiAux n triangin =
    case triangin of
    Triangulo (x1,y1) (x2,y2) (x3,y3) ->
        if n <= 0 then
            [triangin]
        else
            let
                p1 = (x1,y1)
                p2 = (x2,y2)
                p3 = (x3,y3)

                pm1_2 = (x1 + (x2 - x1)/2, y1 + (y2 - y1)/2)
                pm1_3 = (x1 + (x3 - x1)/2, y1 + (y3 - y1)/2)
                pm2_3 = (x2 + (x3 - x2)/2, y2 + (y3 - y2)/2)


            in
                sierpinskiAux (n-1) (Triangulo p1 pm1_2 pm1_3) ++
                sierpinskiAux (n-1) (Triangulo p2 pm1_2 pm2_3) ++
                sierpinskiAux (n-1) (Triangulo p3 pm1_3 pm2_3)
            


---Arbol (Extra)---
type Linea = Linea (Float, Float) (Float, Float)

arbol n size =
    arbolAux n (size*2/3) (Linea (0,769) (0,769-size)) (pi/2)

arbolAux n size (Linea (xi,yi) (xf, yf)) angi =
    if n <= 0 then
        [
            Linea (xi,yi) (xf, yf)
        ]
    else
        let
            ang1 = angi + (pi/2)
            x1 = xf + size * cos ang1
            y1 = yf - size * sin ang1

            ang2 = angi
            x2 = xf + size * cos ang2
            y2 = yf - size * sin ang2

            ang3 = angi + -pi/2
            x3 = xf + size * cos ang3
            y3 = yf - size * sin ang3
        in
            [
                Linea (xi,yi) (xf, yf)
            ] ++
            arbolAux (n-1) (size*2/3) (Linea (xf,yf) (x1,y1)) ang1 ++
            arbolAux (n-1) (size*2/3) (Linea (xf,yf) (x2,y2)) ang2 ++
            arbolAux (n-1) (size*2/3) (Linea (xf,yf) (x3,y3)) ang3


---KOCH---

type Koords = Koords (Float, Float) (Float, Float) (Float, Float) 

snowflake n =
    lineakaux n (Linea (200, 400 - (sin(pi/3)*400)) (0,400))  ++
    lineakaux n (Linea (400,400) (200,400 - (sin(pi/3)*400))) ++
    lineakaux n (Linea (0,400) (400,400))


lineakaux n lineabase =
    case lineabase of 
    Linea (x1,y1) (x2,y2) -> 
        if n<= 0
        then [lineabase]
        else 
            let
                p1 = (x1,y1)
                p2 = (x2,y2)

                terciox = x1 + (x2 - x1) / 3
                tercioy = y1 + (y2 - y1) / 3
                dosterciox = x2 - (x2 - x1) * 1/3
                dostercioy = y2 - (y2 - y1) * 1/3

                ptercio1 = (terciox, tercioy)
                ptercio2 = (dosterciox, dostercioy)

                pnuevax = (terciox + dosterciox) * cos(pi/3) - (dostercioy - tercioy) * sin(pi/3)
                pnuevay = (tercioy + dostercioy) * cos(pi/3) + (dosterciox - terciox) * sin(pi/3)
                pnueva = (pnuevax, pnuevay)

                lineanuevax = 
                    [Linea (p1) (ptercio1),
                    Linea (ptercio1) (pnueva), 
                    Linea (pnueva) (ptercio2),
                    Linea (ptercio2) (p2)]

            in
                lineakaux (n-1) (Linea (p1) (ptercio1)) ++
                lineakaux (n-1) (Linea (ptercio1) (pnueva)) ++
                lineakaux (n-1) (Linea (pnueva) (ptercio2)) ++
                lineakaux (n-1) (Linea (ptercio2) (p2))
 



---HTML---
type Modelo = Modelo Fractal Int 
type Fractal = FSierpinski | FExtra | FKoch
type Accion = Sierpinski | Extra | Koch

inicial = Modelo FExtra 5

htmlsierpinski m = 
    div
    []
    [
        svg
            [
                width "800",
                height "750",
                viewBox "0 0 800 750"
            ]
            (coordsAPolygons (sierpinski m))
    ]

trianguloSvg (Triangulo (x1,y1) (x2,y2) (x3,y3)) =
    polygon
    [
        points (
                Debug.toString x1 ++ "," ++ Debug.toString y1 ++ " " ++
                Debug.toString x2 ++ "," ++ Debug.toString y2 ++ " " ++
                Debug.toString x3 ++ "," ++ Debug.toString y3
            )
    ] []

coordsAPolygons triangs =
    List.map trianguloSvg triangs


htmlextra m =
    div
    []
    [
        svg
        [
            width "800",
            height "750",
            viewBox "-400 180 800 750"
        ]
        (lineasALines (arbol m 200))
    ]


lineaASvg (Linea (xi,yi) (xf,yf)) =
    line 
    [
       x1 (Debug.toString xi), 
       y1 (Debug.toString yi),
       x2 (Debug.toString xf), 
       y2 (Debug.toString yf),
       stroke "black" 
    ] []

lineasALines lineas =
    List.map lineaASvg lineas


htmlsnowflake m =
    div
    []
    [
        svg
        [
            width "800",
            height "750",
            viewBox "0 0 800 750"
        ]
        (lineasALines (snowflake m))
    ]



actualizador accion (Modelo fractal x) =
    case accion of 
    Koch -> Modelo FKoch x
    Sierpinski -> Modelo FSierpinski x
    Extra -> Modelo FExtra x 

vista (Modelo fractal x) =
    div
    []
    [
        div 
        []
        [
        case fractal of 
        FKoch -> (htmlsnowflake x)
        FSierpinski -> (htmlsierpinski x)
        FExtra -> (htmlextra x)
        ],
        button [onClick Extra] [Html.text "Fractal del Arbol"],
        button [onClick Sierpinski] [Html.text "Fractal de Sierpinski"],
        button [onClick Koch] [Html.text "Fractal de Koch"]
        
    ]


main = 
    Browser.sandbox 
    {
        view = vista,
        update = actualizador,
        init = inicial
    }

