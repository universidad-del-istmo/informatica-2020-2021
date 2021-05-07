#pragma once

#include <string>

enum Terreno {
    Mar,
    TierraLibre,
    TierraOcupada
};

class Mapa {
    public:
    Mapa(Terreno** terreno, const int longitud, const int latitud);
    int longitud() const;
    int latitud() const;
    Terreno* operator[](std::size_t i);

    private:
    Terreno** _terreno;
    const int _longitud;
    const int _latitud;
};