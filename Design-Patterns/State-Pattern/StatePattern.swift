//
//  StatePattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/11.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 在状态模式（State Pattern）：允许一个对象在其内部状态改变时，改变它的行为。
 */

import UIKit

protocol StateProtocol {
    func wakeUp()
    func sleeping()
    func coding()
    func eating()
}

class Coder: StateProtocol {
    var state: StatePattern?

    func wakeUp() {
        state?.wakeUp()
    }
    
    func sleeping() {
        state?.sleeping()
    }
    
    func coding() {
        state?.coding()
    }
    
    func eating() {
        state?.eating()
    }
}

class StatePattern: StateProtocol {
    var coder:Coder?
    init(coder: Coder) {
        self.coder = coder
    }
    
    func wakeUp() {
        print("睡醒了")
        coder?.state = StateAwakePattern.init(coder: coder!)
    }

    func sleeping() {
         print("开始睡觉")
        coder?.state = StateSleepingPattern.init(coder: coder!)
    }

    func coding() {
         print("开始编码")
        coder?.state = StateCodingPattern.init(coder: coder!)
    }

    func eating() {
         print("开始吃饭")
        coder?.state = StateEatingPattern.init(coder: coder!)
    }
}

class StateAwakePattern: StatePattern {
    override func wakeUp() {
        print("已经睡醒了，无法更改状态")
    }
}

class StateSleepingPattern: StatePattern {
    override func sleeping() {
        print("已经睡着了，无法更改状态")
    }
    
    override func coding() {
        print("已经睡着了，无法再 coding")
    }
    
    override func eating() {
        print("已经睡着了，无法再 eating")
    }
}

class StateCodingPattern: StatePattern {
    override func wakeUp() {
        print("已经睡醒了，无法更改状态")
    }
    
    override func coding() {
        print("已经在编码了，无法更改状态")
    }
}

class StateEatingPattern: StatePattern {
    override func wakeUp() {
        print("已经睡醒了，无法更改状态")
    }
    
    override func eating() {
        print("已经在吃饭了，无法更改状态")
    }
}
