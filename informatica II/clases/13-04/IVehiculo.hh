#pragma once

enum Direccion {
    Arriba,
    Abajo,
    Derecha,
    Izquierda
};

class IVehiculo {

    public:
    virtual bool mover(const Direccion direccion) = 0;
    virtual void imprimir() = 0;
    virtual bool colocarVehiculo() = 0;
};