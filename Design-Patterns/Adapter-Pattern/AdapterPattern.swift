//
//  AdapterPattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/9.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 适配器模式(Adapter Pattern) ：将一个接口转换成客户希望的另一个接口，使得原本由于接口不兼容而不能一起工作的那些类可以一起工作。适配器模式的别名是包装器模式（Wrapper），是一种结构型设计模式。
 */

import UIKit

protocol NewDeveloperAdapterProtocol {
    var developer_name: String { get }
    var developer_gender: String { get }
}

struct OldDeveloperAdapter {
    let name: String
    let gender: String

    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
}

struct NewDeveloperAdapter: NewDeveloperAdapterProtocol {

    private let target: OldDeveloperAdapter
    
    var developer_name:String {
        return String(target.name)
    }
    
    var developer_gender:String {
        return String(target.gender)
    }

    init(target: OldDeveloperAdapter) {
        self.target = target
    }
}
