#pragma once

#include <iostream>

#include "IColeccion.hh"

class ListaEncadenada : public IColeccion {

    public:
    ListaEncadenada(int valor, ListaEncadenada* resto);
    ListaEncadenada(int valor);
    ~ListaEncadenada();

    int& operator[](std::size_t indice) override;
    int cantidad() override;
    void borrar(int i) override;
    void agregar(int nuevo) override;

    protected:
    void getNull();

    private:
    int _valor;
    ListaEncadenada* _resto;
};