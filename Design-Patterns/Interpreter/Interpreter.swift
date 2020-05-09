//
//  Interpreter.swift
//  Design-Patterns
//
//  Created by liupengkun on 2020/5/9.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

import UIKit

/*
 解释器（Interpreter）模式：给分析对象定义一个语言，并定义该语言的文法表示，再设计一个解析器来解释语言中的句子。也就是说，用编译语言的方式来分析应用中的实例。这种模式实现了文法表达式处理的接口，该接口解释一个特定的上下文。
 
 解释器模式属于类的行为型模式，描述了如何为语言定义一个文法，如何在该语言中表示一个句子，以及如何解释这些句子，这里的“语言”是使用规定格式和语法的代码。解释器模式主要用在编译器中，在应用系统开发中很少用到。
 */

class Interpreter: NSObject {
    func interpret(content: String) -> String {
        return "无法解析"
    }
}

class InterpreterSample1: Interpreter {
    override func interpret(content: String) -> String {
        return "\(content)1:(InterpreterSample1)"
    }
}

class InterpreterSample2: Interpreter {
    override func interpret(content: String) -> String {
        return "\(content)2:(InterpreterSample2)"
    }
}
