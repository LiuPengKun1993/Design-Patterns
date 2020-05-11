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
        
        // 解释器模式
//        interpret()
        
        // 迭代器模式
//        iterator()
        
        // 简单工厂模式
//        simpleFactoryPattern()
        
        // 工厂方法模式
//        factoryMethodPattern()
        
        // 抽象工厂方法模式
//        abstractFactoryPattern()
        
        // 单例模式
//        singletonPattern()
        
        // 生成器模式
//        builderPattern()
        
        // 原型模式
//        prototypePattern()
        
        // 外观模式
//        facadePattern()
        
        // 适配器
//        adapterPattern()
        
        // 桥接模式
//        bridgePattern()
        
        // 代理模式
//        proxyPattern()
        
        // 修饰模式
//        decoratorPattern()
        
        // 享元模式
        flyweightPattern()
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
    
    // MARK: 迭代器
    func iterator() {
        let greatNovellas = Novellas(novellas: [Novella(name: "The Mist")] )
        print(greatNovellas)
        for novella in greatNovellas {
            print("I've read: \(novella)")
        }
    }
    
    // MARK: 简单工厂模式
    func simpleFactoryPattern() {
        let store = Store.init()
        // 委托工厂制作一台iPhone手机
        let phone = PhoneFactory.init().createPhoneWithTag(tag: "I")
        phone.create()
        store.sellPhone(phone: phone)
    }
    
    // MARK: 工厂方法模式
    func factoryMethodPattern() {
        let store = Store.init()
        // 委托iPhone，MIPhone，HWPhone对应的工厂即可获得对应的手机
        let iphone = IPhoneFactory.init().createPhone()
        iphone.create()
        store.sellPhone(phone: iphone)
    }
    
    // MARK: 抽象工厂方法模式
    func abstractFactoryPattern() {
        let store = Store.init()
        // 根据对应产品的工厂，选择生产手机还是电脑
        let iphone = AppleFactory.init().createPhone()
        iphone.create()
        store.sellPhone(phone: iphone)
        
        let computer = AppleFactory.init().createComputer()
        computer.create()
        store.sellComputer(computer: computer)
    }
    
    // MARK: 单例模式
    func singletonPattern() {
        let singleton1 = SingletonPattern.sharedInstance
        let singleton2 = singleton1.copy()
        let singleton3 = singleton1.mutableCopy()
        print(singleton1, singleton2, singleton3)
    }
    
    // MARK: 生成器模式
    func builderPattern() {
        let director = Director.init()
        let developBob = BuilderDevelopBob.init()
        director.constructPhoneWithBuilder(builder: developBob)
        let develop1 = developBob.obtainDevelop().info()
        print("developerBob:", develop1)
        
        let developSam = BuilderDevelopSam.init()
        director.constructPhoneWithBuilder(builder: developSam)
        let develop2 = developSam.obtainDevelop().info()
        print("developerSam:", develop2)
    }
    
    // MARK: 原型模式
    func prototypePattern() {
        let studentInfo = StudentInfo.init()
        studentInfo.studentName = "liu"
        studentInfo.studentID = "20130101"
        studentInfo.studentAge = "20"
        studentInfo.studentGender = "man"
        
        let prototypePattern = PrototypePattern.init()
        prototypePattern.subjectName = "数学"
        prototypePattern.subjectTime = "2020-05-10 15:00:00"
        prototypePattern.subjectAnswer = "A B D C A B C D A B B A"
        
        studentInfo.prototypePattern = prototypePattern
        
        let studentInfo_copy: StudentInfo = studentInfo.copy() as! StudentInfo
        print("---original---\n\(studentInfo)\n\(studentInfo.studentName)\n\(studentInfo.studentID)\n\(studentInfo.studentAge)\n\(studentInfo.studentGender)\n\(studentInfo.prototypePattern!.subjectAnswer)\n\n")
        
        print("---original copy---\n\(studentInfo_copy)\n\(studentInfo_copy.studentName)\n\(studentInfo_copy.studentID)\n\(studentInfo_copy.studentAge)\n\(studentInfo_copy.studentGender)\n\(studentInfo_copy.prototypePattern!.subjectAnswer)")
        
        studentInfo_copy.studentName = "yang"
        studentInfo_copy.studentID = "20130102"
        studentInfo_copy.studentAge = "19"
        studentInfo_copy.studentGender = "female"
        
        print("\n\n---original---\n\(studentInfo)\n\(studentInfo.studentName)\n\(studentInfo.studentID)\n\(studentInfo.studentAge)\n\(studentInfo.studentGender)\n\(studentInfo.prototypePattern!.subjectAnswer)\n\n")
        print("---original copy---\n\(studentInfo_copy)\n\(studentInfo_copy.studentName)\n\(studentInfo_copy.studentID)\n\(studentInfo_copy.studentAge)\n\(studentInfo_copy.studentGender)\n\(studentInfo_copy.prototypePattern!.subjectAnswer)")
    }
    
    // MARK: 外观模式
    func facadePattern() {
        let facadePattern = FacadePattern.init()
        // 开始工作，打开所有软件
        facadePattern.allON()
        // 下班，关闭所有软件
        facadePattern.allOFF()
        
        // 晚上加班
        facadePattern.codingFlutter()
    }
    
    // MARK: 适配器
    func adapterPattern() {
        let target = OldDeveloperAdapter.init(name: "liu", gender: "man")
        let newAdapter = NewDeveloperAdapter.init(target: target)
        print("name:\(newAdapter.developer_name)","\ngender:\(newAdapter.developer_gender)")
    }
    
    // MARK: 桥接模式
    func bridgePattern() {
        let teacherBob = TeacherBob.init()
        let teacherLinda = TeacherLinda.init()
        let teacherSam = TeacherSam.init()
        
        let seniorLeave = SeniorLeave.init()
        let intermediateLeave = IntermediateLeave.init()
        let juniorLeave = JuniorLeave.init()

        teacherBob.rating(level: seniorLeave)
        teacherBob.rating(level: intermediateLeave)
        
        teacherSam.rating(level: seniorLeave)
        teacherSam.rating(level: juniorLeave)
        
        teacherLinda.rating(level: intermediateLeave)
        teacherLinda.rating(level: juniorLeave)
    }
    
    // MARK: 代理模式
    func proxyPattern() {
        let proxyInterface = ProxyInterface.init()
        proxyInterface.implementationProtocol()
    }
    
    // MARK: 修饰模式
    func decoratorPattern() {
        var learn: LearnProtocol = LearnInfo()
        print("学习时间:\(learn.learnTime)天\n学习内容:\(learn.learnScope)\n")
        
        learn = RuntimeDecoratorPattern(learn: learn)
        print("学习时间:\(learn.learnTime)天\n学习内容:\(learn.learnScope)\n")

        learn = RunloopDecoratorPattern(learn: learn)
        print("学习时间:\(learn.learnTime)天\n学习内容:\(learn.learnScope)")
    }

    // MARK: 享元模式
    func flyweightPattern() {
        // 享元模式，只有13M+
        let factory = FlyweightPhoneFactory.init()
        var array:[PhoneInfo] = []
        for _ in 1...1000000 {
            let type = arc4random_uniform(3)
            let phone = factory.phoneWithType(type: PhoneEnum(rawValue: Int(type))!)
            array.append(phone)
            factory.detailsType()
        }
        print(array)
        
        // 普通方法，飙到130M+
//        var array:[PhoneInfo] = []
//        for _ in 1...1000000 {
//            let phone = PhoneInfo.init()
//            array.append(phone)
//        }
//        print(array)
    }
}

