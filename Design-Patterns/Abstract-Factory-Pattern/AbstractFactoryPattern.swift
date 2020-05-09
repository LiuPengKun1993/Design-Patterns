//
//  AbstractFactoryPattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/9.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 抽象工厂模式(Abstract Factory Pattern)：提供一个创建一系列相关或相互依赖对象的接口，而无须指定它们具体的类。
 */

import UIKit

/**********工厂*********/
class AbstractFactory: NSObject {
    func createPhone() -> Phone {
        return Phone.init()
    }
    
    func createComputer() -> Computer {
        return Computer.init()
    }
}

class AppleFactory: AbstractFactory {
    override func createPhone() -> Phone {
        return IPhone.init()
    }
    
    override func createComputer() -> Computer {
        return MacBookComputer.init()
    }
}

class MIFactory: AbstractFactory {
    override func createPhone() -> Phone {
        return MIPhone.init()
    }
    
    override func createComputer() -> Computer {
        return MIComputer.init()
    }
}

class HWFactory: AbstractFactory {
    override func createPhone() -> Phone {
        return HWPhone.init()
    }
    
    override func createComputer() -> Computer {
        return MateBookComputer.init()
    }
}

/**********电脑基类*********/
class Computer: NSObject {
    func create() {
        
    }
}

/**********电脑产品*********/
class MacBookComputer: Computer {
    override func create() {
        print("生产苹果电脑...")
    }
}

class MIComputer: Computer {
    override func create() {
        print("生产小米电脑...")
    }
}

class MateBookComputer: Computer {
    override func create() {
        print("生产华为电脑...")
    }
}
