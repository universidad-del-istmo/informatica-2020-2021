#pragma once

#include <iostream>
#include <cstddef>

template<typename T>

class ArbolBinario {

    public:
        ArbolBinario(T valor, ArbolBinario* izquierda, ArbolBinario* derecha)
            : _valor(valor)
            , _izquierda(izquierda)
            , _derecha(derecha) {}

        ArbolBinario(T valor)
            : _valor(valor)
            , _izquierda(nullptr)
            , _derecha(nullptr) {}

        ~ArbolBinario() {
            delete _izquierda;
            delete _derecha;
        }

        /*void agregar(T nuevo) {

        }*/

        /*bool existe(T numero) {

        }*/

        /*int filtrar(T menor, T* arreglo) {

        }*/

    private:
        T _valor;
        ArbolBinario* _izquierda;
        ArbolBinario* _derecha;
};