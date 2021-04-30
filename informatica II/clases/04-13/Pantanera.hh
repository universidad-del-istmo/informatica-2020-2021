#pragma once

#include "Vehiculo.hh"

class Pantanera : public Vehiculo {

    public:
    Pantanera(const Mapa& mapa);

    protected:
    bool puedeNavegarHacia(const int i, const int j) override;
    bool posicionInicial(int& posX, int& posY) override;
};