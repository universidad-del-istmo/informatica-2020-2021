#include "Matriz.hh"

#include <iostream>

// Inciso #1:

Matriz::Matriz(float** arreglo, int filas, int columnas) : arg(arreglo), fil(filas), col(columnas) {}

Matriz::~Matriz() {}

void Matriz::crear(float** arreglo, int filas, int columnas) {

    float** arreglo = new float*[filas];

    for(int i = 0; i < filas; i++) {
        arreglo[i] = new float[columnas];
    }
}

// Inciso #2:

std::string Matriz::to_string() {

    std::string resultado;
    int i = 0;
    int j = 0;

    for(i = 0; i < fil; i++) {

        for(j = 0; j < col; j++) {

            resultado.append(std::string(arg[i][j]))
            resultado.append(", ")
        }
    }

    return resultado;
}

// Inciso #3:

float Matriz::recuperar(const int pos1, const int pos2) {

    float respuesta = arg[pos1][pos2];
    return respuesta;
}

void Matriz::asignar(const int pos1, const int pos2, float valor) {

    arg[pos1][pos2] = valor;
}

// Inciso #4:

void Matriz::operando(float** arreglo, int filas, int columnas) {

    arreglo = arg2;
    int fil2 = filas;
    int col2 = columnas;
}

void Matriz::sumar(Matriz operando, Matriz resultado) {

    if(matriz.sumar(operando, resultado)) {

        if(fil == fil2 || col == col2) {
            
            int i = 0;
            int j = 0;

            for(i = 0; i < fil; i++) {

                for(j = 0; j < col; j++) {

                    valor1 = arg[i][j];
                    valor2 = arg2[i][j];

                    resultado[i][j] = valor1 + valor2;
                }
            }

            std::cout << "La suma es: " << resultado.to_string() << "\n";
        }

        else {
            std::cout << "Error, no es posible sumar " << matriz.to_string() << " con " << operando.to_string() << "\n";
        }
    }

    else {
        std::cout << "Error";
    }
}

// Inciso #5:

void Matriz::multiplicar(Matriz operando, Matriz resultado) {

    if(matriz.multiplicar(operando, resultado)) {

        if(fil == fil2 || col == col2) {
            
            int i = 0;
            int j = 0;

            for(i = 0; i < fil; i++) {

                for(j = 0; j < col; j++) {

                    valor1 = arg[i][j];
                    valor2 = arg2[i][j];

                    resultado[i][j] = valor1 * valor2;
                }
            }

            std::cout << "La multiplicacion es: " << resultado.to_string() << "\n";
        }

        else {
            std::cout << "Error, no es posible multiplicar " << matriz.to_string() << " con " << operando.to_string() << "\n";
        }
    }

    else {
        std::cout << "Error";
    }
}