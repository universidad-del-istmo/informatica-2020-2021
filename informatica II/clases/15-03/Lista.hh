#pragma once

#include <string>

class Lista {

    public:
    Lista(int valor, Lista* resto);
    Lista(int valor);

    int get_valor();

    Lista* get_resto();

    std::string to_string();

    /*
    Sumar todos los valores ue hay en la lista
    encadenada.
    */
    int sumatoria();

    private:
    int _valor;

    Lista* _resto;
};