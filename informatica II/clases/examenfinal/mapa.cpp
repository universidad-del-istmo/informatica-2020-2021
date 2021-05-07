#include "mapa.hh"

Mapa::Mapa(Terreno** terreno, const int longitud, const int latitud)
    : _terreno(terreno)
    , _longitud(longitud)
    , _latitud(latitud) {}

int Mapa::longitud() const {

    return _longitud;
}

int Mapa::latitud() const {

    return _latitud;
}

Terreno* Mapa::operator[](std::size_t i) {
    
    return _terreno[i];
}