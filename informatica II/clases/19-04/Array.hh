#pragma once

#include <cstddef>

class Vector {

    public:
    Vector(int x, int y) : _x(x), _y(y) {}
    Vector() : _x(0), _y(0) {}

    int x() const;
    int y() const;

    bool operator==(const Vector& other) const;

    private:
    int _x;
    int _y;
};

template<typename T>
class Array {

    public:
    Array(const std::size_t size)
    : _size(size)
    , _valores(new T[size]) {}

    T& operator[](const std::size_t i) {

        _valores[i] = nuevo;

        return _valores[i];
    }

    bool existe(const T& busqueda) {

        for(int i = 0; i < _size; i++) {

            if(busqueda == _valores[i]) {
                return true;
            }
        }

        return false;
    }

    private:
    std::size_t _size;
    T* _valores;
};