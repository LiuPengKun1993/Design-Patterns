//
//  ChainOfResponsibility.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/8.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

import UIKit

class ChainOfResponsibility: NSObject {

    var position: String = ""
    var bobArray: [String] = ["发现了启动速度慢的问题"]
    var samArray: [String] = ["发现了启动速度慢的问题", "发现了闪退问题"]
    var lindaArray: [String] = ["发现了启动速度慢的问题", "发现了卡顿问题"]

    func fixResult(str: String) {
        print(self.position, str)
    }
    
}

class UserKaren: ChainOfResponsibility {
    override var position: String {
        set {
            let tempPosition = "产品 Karen:"
            super.position = tempPosition
        }
        get {
            return "产品 Karen:"
        }
    }
    func fixBug(str: String) -> Bool {
        fixResult(str: str)
        return DeveloperBob().fixBug(str: str)
    }
}

class DeveloperBob: ChainOfResponsibility {
    override var position: String {
        set {
            let tempPosition = "工程师 Bob:"
            super.position = tempPosition
        }
        get {
            return "工程师 Bob:"
        }
    }
    
    func fixBug(str: String) -> Bool {
        if (bobArray.contains(str)) {
            fixResult(str: "我来解决这个 bug -> \(str)")
            return true
        } else {
            fixResult(str: "不太清楚，可能工程师 Sam 比较熟悉...")
            return DeveloperSam().fixBug(str: str)
        }
    }
}

class DeveloperSam: ChainOfResponsibility {

    override var position: String {
        set {
            let tempPosition = "工程师 Sam:"
            super.position = tempPosition
        }
        get {
            return "工程师 Sam:"
        }
    }
    func fixBug(str: String) -> Bool {
        if (samArray.contains(str)) {
            fixResult(str: "我来解决这个 bug -> \(str)")
            return true
        } else {
            fixResult(str: "不太清楚，可能工程师 Linda 比较熟悉...")
            return DeveloperLinda().fixBug(str: str)
        }
    }
}

class DeveloperLinda: ChainOfResponsibility {

    override var position: String {
        set {
            let tempPosition = "工程师 Linda:"
            super.position = tempPosition
        }
        get {
            return "工程师 Linda:"
        }
    }
    func fixBug(str: String) -> Bool {
        if (lindaArray.contains(str)) {
            fixResult(str: "我来解决这个 bug -> \(str)")
            return true
        } else {
            fixResult(str: "不太清楚，建议先保留此问题")
            return false
        }
    }
}
