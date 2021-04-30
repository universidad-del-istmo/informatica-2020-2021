#pragma once

#include <string>

class Lista {

    public:

    Lista(int valor, Lista* resto);
    Lista(int valor);
    Lista(const Lista& otra);

    ~Lista();

    int getValor();

    Lista* getResto();

    std::string to_string();

    int largo();

    int& operator[](std::size_t ix);

    bool tryGet(std::size_t ix, int& resultado);

    bool operator==(const Lista& otra);

    bool operator>(const Lista& otra);

    void eliminar(int i);

    void getNull(); // Borra 

    protected: // Lista y métodos que hereden de Lista

    int _valor;

    Lista* _resto;
};