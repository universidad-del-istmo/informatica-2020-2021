#pragma once

#include "IVehiculo.hh"
#include "Mapa.hh"

class Vehiculo : public IVehiculo {

    public:
    Vehiculo(const Mapa& mapa);

    bool mover(const Direccion direccion) override;
    void imprimir() override;
    bool colocarVehiculo() override;

    protected:
    Mapa _mapa;
    virtual bool puedeNavegarHacia(const int i, const int j);
    virtual bool posicionInicial(int& posX, int& posY) = 0;

    private:

    int _posX;
    int _posY;
};