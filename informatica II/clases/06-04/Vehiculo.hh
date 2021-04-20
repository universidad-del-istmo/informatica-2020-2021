#pragma once

#include "Mapa.hh"

enum Direccion {
    Arriba,
    Abajo,
    Derecha,
    Izquierda
};

class Vehiculo {

    public:
    Vehiculo(const Mapa& mapa, const int posX, const int posY);

    bool mover(const Direccion direccion);

    private:
    const Mapa _mapa;
    int _posX;
    int _posY;

    bool puedeNavegarHacia(const int i, const int j);
};