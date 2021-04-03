#include "Lista.hh"

#include <iostream>

Lista::Lista(int valor, Lista* resto) : _valor(valor), _resto(resto) {}

Lista::Lista(int valor) : _valor(valor), _resto(nullptr) {}

// Método destructor que libera la memoria ocupada por cada "new"
// que se creó en la lista. No lleva una recursión porque el statement
// delete provoca la llamada del método destructor automáticamente

Lista::~Lista() {

    delete _resto;

    std::cout << "Se llamo el metodo destructor\n";
}

int Lista::get_valor() {

    return _valor;
}

Lista* Lista::get_resto() {

    return _resto;
}

// Método que convierte la lista de tipo Lista a string:

std::string Lista::to_string() {

    std::string resultado;
    Lista* actual = this;

    while(actual != nullptr) {

        resultado.append(std::to_string(actual->_valor));
        resultado.append(", ");

        actual = actual->_resto;
    }

    return resultado;
}

// Método que cuenta cuántos elementos hay en la lista tipo Lista:

int Lista::largo() {

    int resultado = 0;

    for(Lista* i = this; i != nullptr; i = i->_resto) {
        resultado++;
    }

    return resultado;
}

// El método 'operator[]' sirve para acceder a un objeto de la lista
// tipo Lista con los corchetes [].

int Lista::operator[](std::size_t ix) {

    Lista* valor = this;

    for(std::size_t i = ix; i > 0; i--) {

        if(valor == nullptr) {
            std::cout << "Ese elemento no existe, estoy evitando un Segmentation fault.\n";
        }

        valor = valor->_resto;
    }

    return valor->_valor;
}