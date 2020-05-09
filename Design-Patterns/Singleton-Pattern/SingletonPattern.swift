//
//  SingletonPattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/9.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 单例模式(Singleton Pattern)：单例模式确保某一个类只有一个实例，并提供一个访问它的全剧访问点。
 */

import UIKit

class SingletonPattern: NSObject, NSCopying {
    
    // 不允许使用init创建方式
    private override init() {}
    
    static let sharedInstance: SingletonPattern = {
        let instance = SingletonPattern()
        return instance
    }()
    
    func copy(with zone: NSZone? = nil) -> Any {
        return SingletonPattern.sharedInstance
    }
    
    override func mutableCopy() -> Any {
        return SingletonPattern.sharedInstance
    }
    
}
