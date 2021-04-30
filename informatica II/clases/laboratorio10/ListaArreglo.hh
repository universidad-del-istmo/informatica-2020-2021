#pragma once

#include <iostream>

#include "IColeccion.hh"

class ListaArreglo : public IColeccion {

    public:
    ListaArreglo(std::vector<int> lista);

    int& operator[](std::size_t indice) override;
    int cantidad() override;
    void borrar(int i) override;
    void agregar(int nuevo) override;

    private:
    std::vector<int> _lista;
};