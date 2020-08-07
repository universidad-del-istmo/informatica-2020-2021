# Clase 4 de Agosto

## Como sincronizar mi repositorio con el de la clase
1. Hacer backup con todos los cambios actuales
2. Clonar nuevamente *su propio* repositorio de Github
    - `git clone [url del repositorio]`
3. Utilizar `git log` para ubicar el id del cambio mas reciente que haya sido realizdo al repositorio de la clase (El que esta ubicado en la cuenta de la universidad)
4. Utilizar `git reset --hard [id del cambio del paso 3]` para regrasear su repositorio al mismo estado que el repositorio de la clase
5. Utilizar `git push -f` para syincronizar su repositorio local con el repositorio en github.
6. Agregar sus cambios a este nuevo repositorio utilizando el backup si es necesario.

## Programas utilizados
- Instalar "nodejs" version "12.8.*" (https://nodejs.org/)
- Buscar en google: "How to add nodejs to PATH in windows"

## Elm

- La documentacion de Elm esta en: https://package.elm-lang.org/
- Para instalar elm (si node esta instalado) `npm i elm`

### Iniciar un proyecto en Elm
1. Crear una carpeta donde se colocara el proyecto
2. Instalar elm en dicha carpeta
3. Iniciar el proyecto elm con elcomando `node_modules/.bin/elm init`
4. Ahora se puede abrir una terminal interactiva para probar el lenguaje elm mediante: `node_modules/.bin/elm repl`
5: *Atencion:* En windows, la terminal tiene sintaxis diferente y estos comandos necesitan ejecutarse de forma diferente.