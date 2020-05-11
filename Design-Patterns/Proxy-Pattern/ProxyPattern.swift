//
//  ProxyPattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/11.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 代理模式(Proxy Pattern) ：为某个对象提供一个代理，并由这个代理对象控制对原对象的访问。
 */

import UIKit

protocol ProxyPatternProtocol: class {
    func solveBug(bugName:String)
}

class ProxyPattern: NSObject {
    weak var delegate : ProxyPatternProtocol?
    
    func writeBug(bugName:String) {
        self.delegate?.solveBug(bugName: bugName)
    }
}

class ProxyInterface: ProxyPatternProtocol {
    func implementationProtocol() {
        let proxyPattern = ProxyPattern.init()
        proxyPattern.delegate = self
        proxyPattern.writeBug(bugName: "滑动崩溃")
    }
    func solveBug(bugName: String) {
        print("\(bugName) bug 已解决")
    }
}
