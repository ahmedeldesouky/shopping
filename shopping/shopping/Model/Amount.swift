//
//  Wage.swift
//  shopping
//
//  Created by Ahmed Mohamed El-Desouky on 10/31/18.
//  Copyright © 2018 Ahmed Mohamed El-Desouky. All rights reserved.
//

import Foundation
class Amount {
    class func getTotal(forCount count:Double, andPrice price:Double) -> Int {
        return Int(ceil(count * price))
    }
}
