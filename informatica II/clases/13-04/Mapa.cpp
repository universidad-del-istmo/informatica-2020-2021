#include "Mapa.hh"

Mapa::Mapa(Terreno** terreno, const int largo, const int alto) : _largo(largo), _alto(alto), _terreno(terreno) {}

int Mapa::largo() const {

    return _largo;
}

int Mapa::alto() const {

    return _alto;
}

Terreno* Mapa::operator[](std::size_t i) {

    return _terreno[i];
}