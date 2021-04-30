#include "Helicoptero.hh"

Helicoptero::Helicoptero(const Mapa& mapa) : Vehiculo(mapa) {}

bool Helicoptero::posicionInicial(int& posX, int& posY) {

    posX = 0;
    posY = 0;
    return true;
}