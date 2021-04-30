#pragma once

#include "Vehiculo.hh"

class Helicoptero : public Vehiculo {

    public:
    Helicoptero(const Mapa& mapa);

    bool posicionInicial(int& posX, int& posY) override;
};