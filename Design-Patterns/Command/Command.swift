//
//  Command.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/9.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

import UIKit

/*
 命令（Command）模式：将一个请求封装为一个对象，使发出请求的责任和执行请求的责任分割开。这样两者之间通过命令对象进行沟通，这样方便将命令对象进行储存、传递、调用、增加与管理。
 */
class Command: NSObject {
    // 模拟减音量
    func reduceVolume(volumeValue: Int) -> Int {
        print("模拟减音量")
        let tempVolumeValue = volumeValue - 1
        return tempVolumeValue
    }
    
    // 模拟加音量
    func addVolume(volumeValue: Int) -> Int {
        print("模拟加音量")
        let tempVolumeValue = volumeValue + 1
        return tempVolumeValue
    }
}
