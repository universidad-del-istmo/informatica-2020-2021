# Clase 4 de Agosto

## Como sincronizar mi repositorio con el de la clase
1. Hacer backup con todos los cambios actuales
2. Clonar nuevamente *su propio* repositorio de Github
    - `git clone [url del repositorio]`
3. Utilizar `git log` para ubicar el id del cambio mas reciente que haya sido realizdo al repositorio de la clase (El que esta ubicado en la cuenta de la universidad)
4. Utilizar `git reset --hard [id del cambio del paso 3]` para regrasear su repositorio al mismo estado que el repositorio de la clase
5. Utilizar `git push -f` para syincronizar su repositorio local con el repositorio en github.
6. Agregar sus cambios a este nuevo repositorio utilizando el backup si es necesario.