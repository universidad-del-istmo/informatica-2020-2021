#pragma once

class IColeccion {

    public:
    virtual int& operator[](std::size_t indice) = 0;
    virtual int cantidad() = 0;
    virtual void borrar(int elim) = 0;
    virtual void agregar(int nuevo) = 0;
};