#pragma once

#include "mapa.hh"

#include <string>
#include <vector>

class Mundo {
    
    public:
    Mundo(const Mapa& mapa, std::string**& propietarios, std::string**& terrenos);
    void imprimir();
    void agregar(std::string pais, int x, int y);
    void quitar(std::string pais, int x, int y);
    int total(std::string pais);

    protected:
    Mapa _mapa;
    bool rango(const int ancho, const int alto);

    private:
    std::string** _propietarios;
    std::string** _terrenos;
};