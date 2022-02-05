//
//  shipping_cost.swift
//  
//
//  Created by SHORYU on 2022/02/05.
//

class ShippingCost {
    private let minimumForFree: Int = 3000
    private let cost: Int = 500
    
    let basePrice: Int
    
    init(basePrice: Int) {
        self.basePrice = basePrice
    }
    
    func amoount() -> Int {
        if (basePrice < minimumForFree) {
            return cost
        }
        return 0
    }
    
}
