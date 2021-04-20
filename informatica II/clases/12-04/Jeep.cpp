#include "Jeep.hh"

Jeep::Jeep(const Mapa& mapa, const int posX, const int posY) : Vehiculo(mapa, posX, posY) {}

bool Jeep::puedeNavegarHacia(const int i, const int j) {

    return
        Vehiculo::puedeNavegarHacia(i, j)
        && _mapa[i][j] == Terreno::Tierra;
}