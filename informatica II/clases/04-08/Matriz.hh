#pragma once

#include <string>

class Matriz {

    public:
    Matriz(float** arreglo, int filas, int columnas);
    ~Matriz();
    void crear(float** arreglo, int filas, int columnas)

    std::string to_string();
    float recuperar(const int pos1, const int pos2);
    void asignar(const int pos1, const int pos2, float valor);
    void operando(float** arreglo, int filas, int columnas);
    void resultado();

    void sumar(Matriz operando, Matriz resultado);
    void multiplicar(Matriz operando, Matriz resultado);

    // void invertir(Matriz resultado);

    private:
    int fil;
    int col;
    float** arg;
};