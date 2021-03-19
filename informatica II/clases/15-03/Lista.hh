#pragma once

#include <string>

class Lista {

    public:
    Lista(int valor, Lista* resto);
    Lista(int valor);

    ~Lista();

    int get_valor();

    Lista* get_resto();

    std::string to_string();

    /*
    Sumar todos los valores ue hay en la lista
    encadenada.
    */
    int sumatoria();

    int largo();

    int operator[](std::size_t ix);

    private:
    int _valor;

    Lista* _resto;
};