#pragma once

enum Terreno {
    Tierra,
    Calle,
    Agua
};

class Mapa {

    public:
    Mapa(Terreno** terreno, const int largo, const int alto);

    int largo() const;
    int alto() const;

    private:
    Terreno** _terreno;
    const int _alto;
    const int _largo;
};