//
//  DecoratorPattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/11.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 装饰模式(Decorator Pattern) ：不改变原有对象的前提下，动态地给一个对象增加一些额外的功能。
 */

/*
 不知道原始类实现细节，只提供接口，动态扩展功能。
 不想有更多子类，不想通过继承的方式添加功能。
 动态扩展对象的功能。
 必须持有对象的引用，包含实例化的被装饰类。
 */

import UIKit

protocol JuniorLearnProtocol {
    var learnTime: Double { get }
}

protocol SeniorLearnProtocol {
    var learnScope: [String] { get }
}

typealias LearnProtocol = JuniorLearnProtocol & SeniorLearnProtocol

struct LearnInfo: LearnProtocol {
    let learnTime: Double = 5.0
    let learnScope = ["编程基础", "性能优化"]
}

protocol DecoratorPattern: LearnProtocol {
    var learn: LearnProtocol { get }
}

struct RuntimeDecoratorPattern: DecoratorPattern {
    let learn: LearnProtocol

    var learnTime: Double {
        return learn.learnTime + 1.0
    }

    var learnScope: [String] {
        return learn.learnScope + ["Runtime"]
    }
}

struct RunloopDecoratorPattern: DecoratorPattern {
    let learn: LearnProtocol

    var learnTime: Double {
        return learn.learnTime + 1.5
    }

    var learnScope: [String] {
        return learn.learnScope + ["Runloop"]
    }
}
