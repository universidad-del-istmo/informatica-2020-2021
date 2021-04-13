#include "Lista.hh"

#include <iostream>

Lista::Lista(int valor, Lista* resto) : _valor(valor), _resto(resto) {}

Lista::Lista(int valor) : _valor(valor), _resto(nullptr) {}

// Método destructor que libera la memoria ocupada por cada "new"
// que se creó en la lista. No lleva una recursión porque el statement
// delete provoca la llamada del método destructor automáticamente.

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

// Aquí empiezan los cambios de la clase del 22-03...

// Método que sirve para acceder a los índices sin errores:

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

// Estas son las distintas formas en que se puede dar una variable
// como parámetro (por valor o por referencia):

void Lista::byValue(int valor, std::string st) {

    valor = 42;
    st[0] = 'A';
}

// Para pasar la variable por referencia, se usa el &.

void Lista::byReference(int& valor, std::string& st) {

    valor = 42;
    st[0] = 'A';
}

// Este método sirve cuando se inicializa una variable
// asignándole el valor de otra variable:

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

// El método 'operator==' sirve para comparar si las dos listas
// tipo Lista son iguales o no:

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

// El método 'operator>' sirve para comparar si una lista de
// tipo Lista es mayor a la otra:

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