//
//  TemplateMethodPattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/11.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 在模板模式（Template Method Pattern）中，定义一个操作中的算法的框架，而将一些步骤的执行延迟到子类中，使得子类可以在不改变算法的结构的前提下即可重新定义该算法的某些特定步骤。
 */

import UIKit

class TemplateMethodPattern: NSObject {
    
    func goToWork() {
        print("---从家到公司---")
        leaveHome()
        goCompany()
        toCompany()
    }
    
    func leaveHome() {
        print("离开家")
    }
    
    func goCompany() {
        print("去公司")
    }
    
    func toCompany() {
        print("到公司了")
    }
}

class GoCompanyBySubway: TemplateMethodPattern {
    override func goCompany() {
        print("坐地铁去公司")
    }
}

class GoCompanyByCar: TemplateMethodPattern {
    override func goCompany() {
        print("开车去公司")
    }
}
