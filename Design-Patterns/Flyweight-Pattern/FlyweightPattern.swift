//
//  FlyweightPattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/11.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 享元模式(Flyweight Pattern)：运用共享技术复用大量细粒度的对象,降低程序内存的占用,提高程序的性能。
 UITableViewCell，UICollectionViewCell
 */

import UIKit

enum PhoneEnum:Int {
    case IPhone = 0
    case MIPhone = 1
    case HWPhone = 2
}

class PhoneInfo: NSObject {
    var phoneName: String = ""
    var phoneColor: String = ""
}

class FlyweightPhoneFactory: NSObject {
    var phonePools:Dictionary<String, Any> = [:]
    
    func phoneWithType(type: PhoneEnum) -> PhoneInfo {
        if (self.phonePools.keys.count <= 0) {
            self.phonePools = Dictionary.init(minimumCapacity: 3)
        }
        
        let phoneInfo = self.phonePools["\(type)"]
        if (phoneInfo == nil) {
            let tempPhoneInfo = PhoneInfo.init()
            switch type {
            case .IPhone:
                tempPhoneInfo.phoneColor = "红色"
                tempPhoneInfo.phoneName = "苹果"
            case .MIPhone:
                tempPhoneInfo.phoneColor = "黑色"
                tempPhoneInfo.phoneName = "小米"
            case .HWPhone:
                tempPhoneInfo.phoneColor = "白色"
                tempPhoneInfo.phoneName = "华为"
            }
            self.phonePools["\(type)"] = tempPhoneInfo
            return tempPhoneInfo
        }
        return phoneInfo as! PhoneInfo
    }
    
    func detailsType() {
        let poolsArray = self.phonePools.keys
        poolsArray.forEach { (key) in
            print(self.phonePools["\(key)"] as Any, key)
        }
    }
}

