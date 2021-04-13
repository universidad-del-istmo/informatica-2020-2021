#include "Lista.hh"

#include <iostream>

Lista::Lista(int valor, Lista* resto) : _valor(valor), _resto(resto) {}

Lista::Lista(int valor) : _valor(valor), _resto(nullptr) {}

Lista::Lista(const Lista& otra) : _valor(otra._valor) {

    Lista* restoPtr = otra._resto;

    if(restoPtr != nullptr) {
        _resto = new Lista(*restoPtr);
    }
    else {
        _resto = nullptr;
    }

    std::cout << "El copy constructor esta copiando\n";
}

Lista::~Lista() {

    delete _resto;

    std::cout << "(Se llamo el metodo destructor)\n";
}

int Lista::getValor() {

    return _valor;
}

Lista* Lista::getResto() {

    return _resto;
}

// Este método adquiere el nullptr:

void Lista::getNull() {

    _resto = nullptr;
}

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

int Lista::largo() {

    int resultado = 0;

    for(Lista* i = this; i != nullptr; i = i->_resto) {
        
        resultado++;
    }

    return resultado;
}

int& Lista::operator[](std::size_t ix) {

    Lista* valor = this;

    for(std::size_t i = ix; i > 0; i--) {

        if(valor == nullptr) {
            std::cout << "A punto de tronar \n";
        }

        valor = valor->_resto;
    }

    return valor->_valor;
}

bool Lista::tryGet(std::size_t ix, int& respuesta) {

    Lista* valor = this;

    for(std::size_t i = ix; i > 0; i--) {

        if(valor == nullptr) {
            return false;
        }

        valor = valor->_resto;
    }

    respuesta = valor->_valor;

    return true;
}

bool Lista::operator==(const Lista& otra) {

    if(_valor != otra._valor) {
        return false;
    }

    if(_resto == nullptr && otra._resto == nullptr) {
        return true;
    }

    if(_resto == nullptr || otra._resto == nullptr) {
        return false;
    }

    Lista& l1 = *_resto;
    Lista& l2 = *otra._resto;

    return l1 == l2;
}

bool Lista::operator>(const Lista& otra) {

    Lista& l1 = *_resto;
    Lista& l2 = *otra._resto;

    int largo1 = l1.largo();
    int largo2 = l2.largo();

    if(largo1 > largo2) {
        return true;
    }
    else {
        return false;
    }
}