//
//  PrototypePattern.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/9.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

/*
 原型模式（Prototype Pattern）: 通过“复制”一个已经存在的实例来返回新的实例,而不是新建实例。被复制的实例就是我们所称的“原型”，这个原型是可定制的。
 */

import UIKit

class PrototypePattern: NSObject, NSCopying {
    var subjectName: String = ""
    var subjectTime: String = ""
    var subjectAnswer: String = ""
    
    func copy(with zone: NSZone? = nil) -> Any {
        let prototypePattern = PrototypePattern.init()
        prototypePattern.subjectName = subjectName.mutableCopy() as! String
        prototypePattern.subjectTime = subjectTime.mutableCopy() as! String
        prototypePattern.subjectAnswer = subjectAnswer.mutableCopy() as! String
        return prototypePattern
    }
}

class StudentInfo: NSObject, NSCopying {
    var studentName: String = ""
    var studentGender: String = ""
    var studentAge: String = ""
    var studentID: String = ""
    var prototypePattern: PrototypePattern? = nil
    
    func copy(with zone: NSZone? = nil) -> Any {
        let student = StudentInfo.init()
        student.studentName = studentName.mutableCopy() as! String
        student.studentGender = studentGender.mutableCopy() as! String
        student.studentAge = studentAge.mutableCopy() as! String
        student.studentID = studentID.mutableCopy() as! String
        student.prototypePattern = prototypePattern?.copy() as? PrototypePattern
        return student
    }
}
