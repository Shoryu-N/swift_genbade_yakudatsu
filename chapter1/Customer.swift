//
//  Customer.swift
//  
//
//  Created by SHORYU on 2022/02/05.
//

struct Customer {
    let id: Int
    let name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

class Customers {
    private(set) var customers = [Customer]()
    
    func add(customer: Customer) -> Void {
        customers.append(customer)
    }
}
