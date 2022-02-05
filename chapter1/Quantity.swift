//
//  Quantity.swift
//  
//
//  Created by SHORYU on 2022/02/05.
//

enum ValueError: Error {
    case canNotAdd
}

final class Quantity {
    let min: Int = 1
    let max: Int = 100
    
    var value: Int = 0
    
    init?(value: Int) {
        if !valueValidation(value: value) {
            return nil
        }
        self.value = value
    }
    
    func canAdd(other: Quantity) -> Bool {
        let added: Int = addValue(other: other)
        return added <= max
    }
    
    func add(other: Quantity) throws -> Quantity? {
        if !canAdd(other: other) {
            throw ValueError.canNotAdd
        }

        let added: Int = addValue(other: other)
        guard let quantity =  Quantity(value: added) else { return nil }
        return quantity
    }
    
    private func addValue(other: Quantity) -> Int {
        return self.value + other.value
    }
    
    private func valueValidation(value: Int) -> Bool {
        return value > self.min && value < self.max
    }
}

let q = Quantity(value: 13)

let q_max_error = Quantity(value: 1100)
let q_min_error =  Quantity(value: 0)
