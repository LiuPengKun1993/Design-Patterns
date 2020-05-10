//
//  FacadePattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/9.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 外观模式(Facade Pattern)：外观模式定义了一个高层接口，为子系统中的一组接口提供一个统一的接口。外观模式又称为门面模式，它是一种结构型设计模式模式。
 */

import UIKit

class FacadePattern: NSObject {
    let xcode = Xcode.init()
    let vscode = VSCode.init()
    let charles = Charles.init()
    let sourceTree = SourceTree.init()
    
    // 打开所有软件
    func allON() {
        let tools = [xcode, vscode, charles, sourceTree]
        tools.forEach { (tool) in
            tool.on()
        }
    }
    
    // 关闭所有软件
    func allOFF() {
        let tools = [xcode, vscode, charles, sourceTree]
        tools.forEach { (tool) in
            tool.off()
        }
    }
    
    // 写OC代码
    func codingOC() {
        xcode.on()
        xcode.codingOC()
    }
    
    // 写Swift代码
    func codingSwift() {
        xcode.on()
        xcode.codingSwift()
    }
    
    // 写Flutter代码
    func codingFlutter() {
        vscode.on()
        vscode.codingFlutter()
    }
    
    // 写JS代码
    func codingJS() {
        vscode.on()
        vscode.codingJS()
    }
    
    // 抓包真机
    func captureMobilePhone() {
        charles.on()
        charles.captureMobilePhone()
    }
    
    // 抓包模拟器
    func captureSimulator() {
        charles.on()
        charles.captureMobilePhone()
    }
    
    // 创建新分支
    func gitCheckOut() {
        sourceTree.on()
        sourceTree.gitCheckOut()
    }
    
    // 提交代码
    func gitPush() {
        sourceTree.on()
        sourceTree.gitPush()
    }
}

// 工具父类
class SoftwareTools: NSObject {
    
    func on() {
        print(self, "已打开")
    }
    
    func off() {
        print(self, "已关闭")
    }

}

class Xcode: SoftwareTools {
    func codingOC() {
        print("写OC")
    }
    func codingSwift() {
        print("写Swift")
    }
}

class VSCode: SoftwareTools {
    func codingFlutter() {
        print("写Flutter")
    }
    func codingJS() {
        print("写JS")
    }
}

class Charles: SoftwareTools {
    func captureMobilePhone() {
        print("抓包真机")
    }
    func captureSimulator() {
        print("抓包模拟器")
    }
}

class SourceTree: SoftwareTools {
    func gitCheckOut() {
        print("创建新分支")
    }
    func gitPush() {
        print("提交代码")
    }
}
