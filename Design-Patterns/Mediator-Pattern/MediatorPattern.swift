//
//  MediatorPattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/11.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 中介者模式(Mediator Pattern)：用一个中介对象来封装一系列的对象交互，中介者使各对象之间不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。
 */

import UIKit

class MediatorPattern: NSObject {
    var userArray:Array<MediatorUser> = []

    func addUser(user: MediatorUser) {
        userArray.append(user)
    }
    
    func sendMessage(user: MediatorUser, message:String) {
        userArray.forEach { (item_user) in
            if (item_user != user) {
                item_user.receivedMessage(message: message)
            }
        }
    }
}

class MediatorUser: NSObject {
    var name:String = ""
    var mediator: MediatorPattern
    
    init(name: String, mediator: MediatorPattern) {
        self.name = name
        self.mediator = mediator
    }
    
    func sendMessage(message: String) {
        print("\n")
        print(self.name, "说：")
        self.mediator.sendMessage(user: self, message: message)
    }
    
    func receivedMessage(message: String) {
        print("\(message), \(self.name)")
    }
    
}
