//
//  StrategyPattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/11.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 策略模式(Strategy Pattern)：定义一系列算法，将每一个算法封装起来，并让它们可以相互替换。
 */

import UIKit

class StrategyPattern: NSObject {
    var operation:TwoNumOperation?
    
    func excuteOperation(a: Int, b: Int) -> Int {
        return (operation?.operationBetween(a: a, b: b))!
    }
}

class TwoNumOperation: NSObject {
    func operationBetween(a: Int, b: Int) -> Int {
        return 0
    }
}

class TwoNumOperationAdd: TwoNumOperation {
    override func operationBetween(a: Int, b: Int) -> Int {
        return a + b
    }
}

class TwoNumOperationSubstract: TwoNumOperation {
    override func operationBetween(a: Int, b: Int) -> Int {
        return a - b
    }
}

class TwoNumOperationMultiply: TwoNumOperation {
    override func operationBetween(a: Int, b: Int) -> Int {
        return a * b
    }
}

class TwoNumOperationDivision: TwoNumOperation {
    override func operationBetween(a: Int, b: Int) -> Int {
        return a / b
    }
}
