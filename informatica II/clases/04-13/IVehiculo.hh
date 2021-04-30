#pragma once

enum Direccion {

    Arriba,
    Abajo,
    Derecha,
    Izquierda
};

class IVehiculo {

    public:
    // Al igualar a 0 un método, se indica que no se le va a dar cuerpo.
    virtual bool mover(const Direccion direccion) = 0;
    virtual void imprimir() = 0;
    virtual bool colocarVehiculo() = 0;
};