#pragma once

#include <cstddef>

template<typename T>
class Array {

    public:
    Array(const std::size_t size)
    : _size(size)
    , _valores(new T[size]) {}

    T& operator[](const std::size_t i) {
        return _valores[i];
    }

    private:
    std::size_t _size;
    T* _valores;
};