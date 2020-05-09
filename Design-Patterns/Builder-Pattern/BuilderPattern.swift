//
//  BuilderPattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/9.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 生成器模式(Builder Pattern)：也叫创建者模式，它将一个复杂对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示。
 */

import UIKit

class Director: NSObject {
    func constructPhoneWithBuilder(builder: BuilderPattern) {
        builder.buildDevelopYears()
        builder.buildDevelopLanguage()
        builder.buildDevelopProjects()
    }
}

class BuilderPattern: NSObject {
    
    var develop = Develop.init()
    
    func buildDevelopYears() {
        
    }
    
    func buildDevelopLanguage() {
        
    }
    
    func buildDevelopProjects() {
        
    }
    
    func obtainDevelop() -> Develop {
        return develop
    }
}

class Develop: NSObject {
    var developYears: String = ""
    var developLanguage: String = ""
    var developProjects: String = ""
    
    func info() -> String {
        return "开发年限：\(developYears) 年；开发语言：\(developLanguage)；开发项目：\(developProjects) 个。"
    }
}

class BuilderDevelopBob: BuilderPattern {
    
    override func buildDevelopYears() {
        develop.developYears = "4"
    }
    
    override func buildDevelopLanguage() {
        develop.developLanguage = "Objective-C、Swift"
    }
    
    override func buildDevelopProjects() {
        develop.developProjects = "5"
    }
    
    override func obtainDevelop() -> Develop {
        return develop
    }
}

class BuilderDevelopSam: BuilderPattern {
    
    override func buildDevelopYears() {
        develop.developYears = "6"
    }
    
    override func buildDevelopLanguage() {
        develop.developLanguage = "Objective-C、Swift、JavaScript、Java、Dart"
    }
    
    override func buildDevelopProjects() {
        develop.developProjects = "8"
    }
    
    override func obtainDevelop() -> Develop {
        return develop
    }
}
