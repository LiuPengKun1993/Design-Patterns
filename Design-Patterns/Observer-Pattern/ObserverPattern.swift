//
//  ObserverPattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/11.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 观察者模式(Observer Pattern)：定义对象间的一种一对多的依赖关系，使得每当一个对象状态发生改变时，其相关依赖对象都可以到通知并做相应针对性的处理。
 */

import UIKit

class ObserverPattern: NSObject {

}

protocol ObserverPatternObserver : class {
    func willChange(propertyName: String, newPropertyValue: Any?)
    func didChange(propertyName: String, oldPropertyValue: Any?)
}

final class TestChambers {

    weak var observer:ObserverPatternObserver?

    private let testName = "testNameValue"

    var testNumber: Int = 0 {
        willSet(newValue) {
            observer?.willChange(propertyName: testName, newPropertyValue: newValue)
        }
        didSet {
            observer?.didChange(propertyName: testName, oldPropertyValue: oldValue)
        }
    }
}

final class Observer : ObserverPatternObserver {
    func willChange(propertyName: String, newPropertyValue: Any?) {
        print("willChange: \(propertyName) \(String(describing: newPropertyValue))")
    }

    func didChange(propertyName: String, oldPropertyValue: Any?) {
        print("didChange: \(propertyName) \(String(describing: oldPropertyValue))")
    }
}
