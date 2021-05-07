#pragma once

#include <iostream>
#include <cstddef>
#include <vector>

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

        void agregar(T nuevo) {

            if(_izquierda == nullptr) {

                _izquierda = new ArbolBinario(0);
                _izquierda->_valor = nuevo;
                return;
            }
            else if(_derecha == nullptr) {

                _derecha = new ArbolBinario(0);
                _derecha->_valor = nuevo;
                return;
            }
            else {

                _izquierda->agregar(nuevo);
                _derecha->agregar(nuevo);
            }
        }

        bool existe(T numero) {

            if(_valor == numero) {

                return true;
            }
            else {

                _izquierda->existe(numero);
                _derecha->existe(numero);
            }

            return false;
        }

        int filtrar(T menor, T* arreglo) {

            std::vector<T> vector;

            if(_valor >= menor) {

                vector.push_back(_valor);
            }

            _izquierda->filtrar(menor, arreglo);
            _derecha->filtrar(menor, arreglo);

            int tamano = vector.size();
            return tamano;
        }

    private:
        T _valor;
        ArbolBinario* _izquierda;
        ArbolBinario* _derecha;
};