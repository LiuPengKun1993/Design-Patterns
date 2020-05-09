//
//  SimpleFactoryPattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/9.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

import UIKit

/*
 简单工厂模式(Simple Factory Pattern)：专门定义一个类（工厂类）来负责创建其他类的实例。可以根据创建方法的参数来返回不同类的实例，被创建的实例通常都具有共同的父类。
 */
class Store: NSObject {
    func sellPhone(phone: Phone) {
        print("开始出售：\(phone)")
    }
    
    func sellComputer(computer: Computer) {
        print("开始出售：\(computer)")
    }
}

class PhoneFactory: NSObject {
    func createPhoneWithTag(tag: String) -> Phone {
        if (tag == "I") {
            return IPhone.init()
        } else if (tag == "MI") {
            return MIPhone.init()
        } else if (tag == "HW") {
            return HWPhone.init()
        } else {
            return Phone.init()
        }
    }
}

class Phone: NSObject {
    func create() {
        print("生产手机")
    }
}

class IPhone: Phone {
    override func create() {
        print("生产苹果手机...")
    }
}

class MIPhone: Phone {
    override func create() {
        print("生产小米手机...")
    }
}

class HWPhone: Phone {
    override func create() {
        print("生产华为手机...")
    }
}
