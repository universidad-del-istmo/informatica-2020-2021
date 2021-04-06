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

    std::cout << "Se esta copiando\n";

}

void Lista::terminar() {

    _resto = nullptr;
}


Lista::~Lista() {

    delete _resto;

    std::cout << "adios \n";
}

int Lista::get_valor() {

    return _valor;
}

Lista* Lista::get_resto() {

    return _resto;
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

void Lista::eliminar(int i) {

    Lista* actual = this;
    Lista* previo = nullptr;

    for(int j = 0; j < i; j++) {
        previo = actual;
        actual = actual->_resto;
    }

    if(previo == nullptr) {
        Lista* tmp = _resto;

        _valor = _resto->_valor;
        _resto = _resto->_resto;

        tmp->terminar();
        delete tmp;
        return; 
    }

    previo->_resto = actual->_resto;
    actual->terminar();
    delete actual;
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
    Lista& l2 = *(otra._resto);

    return l1 == l2;
    
    // Nota: esto es equivalente a lo siguiente
    //return *_resto == *otra._resto;
}