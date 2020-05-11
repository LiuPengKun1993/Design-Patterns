//
//  BridgePattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/9.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 桥接模式(Simple Factory Pattern)：将抽象部分与它的实现部分分离,使它们都可以独立地变化。
 */

import UIKit

// MARK: 抽象类
class BridgePattern: NSObject {
    func rating(level:Level) {
        print("\nname:\(self)\nlevel:\(level)")
    }
}

// MARK: 扩展抽象类
class TeacherBob: BridgePattern {
    
}

class TeacherLinda: BridgePattern {
    
}

class TeacherSam: BridgePattern {
    
}

// MARK: 实现类接口
class Level: NSObject {
    
}

// MARK: 具体实现类
class SeniorLeave: Level {
    
}

class IntermediateLeave: Level {
    
}

class JuniorLeave: Level {
    
}
