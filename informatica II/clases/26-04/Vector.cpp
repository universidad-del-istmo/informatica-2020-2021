#include "Vector.hh"

bool Vector::operator==(const Vector& other) const {
    return _x == other._x && _y == other._y;
}

int Vector::x() const {
    return _x;
}

int Vector::y() const {
    return _y;
}

std::string Vector::to_string() const {

    return std::string("(")
        + std::to_string(_x)
        + std::string(", ")
        + std::to_string(_y)
        + std::string(")");
}