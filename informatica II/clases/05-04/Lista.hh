#pragma once

#include <string>

class Lista {

    public:
    Lista(int valor, Lista* resto);
    Lista(int valor);
    Lista(const Lista& otra);

    ~Lista();

    int get_valor();

    Lista* get_resto();

    std::string to_string();

    int largo();

    int& operator[](std::size_t ix);

    bool tryGet(std::size_t ix, int& resultado);

    bool operator==(const Lista& otra);
    
    void terminar();

    protected:
    int _valor;
    Lista* _resto;
    
};