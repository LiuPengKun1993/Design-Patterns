//
//  ViewController.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/8.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 责任链模式
//        chainOfResponsibility()
        
        // 命令模式
//        command()
        
        interpret()
    }
    
    // MARK: 责任链模式
    func chainOfResponsibility() {
        let userKaren = UserKaren.init()
        
        print("------------问题1------------")

        if (userKaren.fixBug(str: "发现了启动速度慢的问题")) {
            userKaren.fixResult(str: "启动速度慢的问题已解决")
        } else {
            userKaren.fixResult(str: "启动速度慢的问题暂时保留")
        }
        
        print("------------问题2------------")
        if (userKaren.fixBug(str: "发现了闪退问题")) {
            userKaren.fixResult(str: "闪退问题已解决")
        } else {
            userKaren.fixResult(str: "闪退问题暂时保留")
        }
        
        print("------------问题3------------")
        if (userKaren.fixBug(str: "发现了卡顿问题")) {
            userKaren.fixResult(str: "卡顿问题已解决")
        } else {
            userKaren.fixResult(str: "卡顿问题暂时保留")
        }
        
        print("------------问题4------------")
        if (userKaren.fixBug(str: "发现了适配问题")) {
            userKaren.fixResult(str: "适配问题已解决")
        } else {
            userKaren.fixResult(str: "适配问题暂时保留")
        }
    }
    
    // MARK: 命令模式
    func command() {
        let command = Command.init()
        
        let volumeValue = 5
        print("当前音量：", volumeValue)
        
        let volumeValue1 = command.addVolume(volumeValue: volumeValue)
        print("当前音量：", volumeValue1)
        
        let volumeValue2 = command.addVolume(volumeValue: volumeValue1)
        print("当前音量：", volumeValue2)
        
        let volumeValue3 = command.reduceVolume(volumeValue: volumeValue2)
        print("当前音量：", volumeValue3)
    }
    
    // MARK: 解释器
    func interpret() {
        let interpret1 = InterpreterSample1.init()
        let interpret2 = InterpreterSample2.init()
        let interpret3 = Interpreter.init()
        let list = [interpret1, interpret2, interpret3]
        list.forEach { (list_element) in
            print(list_element.interpret(content: "解释器"))
        }
        
    }

}

