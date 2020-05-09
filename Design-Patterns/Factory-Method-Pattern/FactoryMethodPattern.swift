//
//  FactoryMethodPattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/9.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 工厂方法模式(Factory Method Pattern)又称为工厂模式，工厂父类负责定义创建产品对象的公共接口，而工厂子类则负责生成具体的产品对象，即通过不同的工厂子类来创建不同的产品对象。
 */

import UIKit

class FactoryMethodPattern: NSObject {

}

class FactoryMethod: NSObject {
    func createPhone() -> Phone {
        return Phone.init()
    }
}

class IPhoneFactory: FactoryMethod {
    override func createPhone() -> Phone {
        return IPhone.init()
    }
}

class MIPhoneFactory: FactoryMethod {
    override func createPhone() -> Phone {
        return MIPhone.init()
    }
}

class HWPhoneFactory: FactoryMethod {
    override func createPhone() -> Phone {
        return HWPhone.init()
    }
}
