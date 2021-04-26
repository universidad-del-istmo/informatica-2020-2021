#pragma once

#include <iostream>
#include <string>

class Vector {

    public:
    Vector(int x, int y) : _x(x), _y(y) {}
    Vector() : _x(0), _y(0) {}
    ~Vector() { std::cout << "se destruyo \n"; }

    int x() const;
    int y() const;

    bool operator==(const Vector& other) const;

    std::string to_string() const;

    private:
    int _x;
    int _y;
};