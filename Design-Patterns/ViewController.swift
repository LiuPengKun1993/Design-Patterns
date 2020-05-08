//
//  ViewController.swift
//  Design-Patterns
//
//  Created by 彭倩倩 on 2020/5/8.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        chainOfResponsibility()
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


}

