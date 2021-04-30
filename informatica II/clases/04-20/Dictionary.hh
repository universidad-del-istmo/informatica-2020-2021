#pragma once

#include <stdlib.h>
#include <vector>

template<typename TKey, typename TValue>

class Dictionary {

    public:
    Dictionary(std::vector<TKey> keys, std::vector<TValue> values)
        : _keys(keys), _values(values) {}

    TValue& operator[](const TKey ix) {

        for(int i = 0; i < _keys.size(); i++) {

            if(_keys[i] == ix) {

                return _values[i];
            }
        }

        return _values[0]; // Evita segmentation fault
    }

    void agregar(TKey nKey, TValue nValue) {

        for(int i = 0; i < _keys.size(); i++) {

            if(_keys[i] == nKey) {

                _keys.erase(_keys.begin() + 1);
                _values.erase(_values.begin() + 1);
            }
        }

        _keys.push_back(nKey);
        _values.push_back(nValue);
    }

    bool existe(const TKey key) {

        for(size_t i = 0; i < _keys.size(); i++) {

            if(_keys[i] == key) {

                return true;
            }
        }

        return false;
    }

    private:
    std::vector<TKey> _keys;
    std::vector<TValue> _values;
};