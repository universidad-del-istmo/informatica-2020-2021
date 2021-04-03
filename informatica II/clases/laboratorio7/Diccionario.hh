#pragma once

#include <iostream>
#include <string>
#include <vector>

class Diccionario {

    public:
    void agregar(std::string palabra, std::string def);
    void buscar(std::string palabraBuscar);
    void enumerar(char letra);
    void imprimir();

    private:
    std::vector<std::string> vPalabras;
    std::vector<std::string> vDef;
    bool existe = false;
    std::vector<std::string> vLetras;
};
