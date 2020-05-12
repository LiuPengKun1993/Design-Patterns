# 设计模式（Design-Patterns）


### 1. 创建型设计模式

创建型设计模式分为：

- [简单工厂模式（Simple Factory Pattern）](#11-简单工厂模式simple-factory-pattern)
- [工厂方法模式（Factory Method Pattern）](#12-工厂方法模式factory-method-pattern)
- [抽象工厂模式（Abstract Factory Pattern）](#13-抽象工厂模式abstract-factory-pattern)
- [单例模式（Singleton Pattern）](#14-单例模式singleton-pattern)
- [生成器模式（Builder Pattern）](#15-生成器模式builder-pattern)
- [原型模式（Prototype Pattern）](#16-原型模式prototype-pattern)

#### 1.1 简单工厂模式（Simple Factory Pattern）

- 专门定义一个类（工厂类）来负责创建其他类的实例。可以根据创建方法的参数来返回不同类的实例，被创建的实例通常都具有共同的父类。
- Demo 地址: [SimpleFactoryPattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Simple-Factory-Pattern/SimpleFactoryPattern.swift)

#### 1.2 工厂方法模式（Factory Method Pattern）

- 工厂方法模式(Factory Method Pattern)又称为工厂模式，工厂父类负责定义创建产品对象的公共接口，而工厂子类则负责生成具体的产品对象，即通过不同的工厂子类来创建不同的产品对象。
- Demo 地址: [FactoryMethodPattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Factory-Method-Pattern/FactoryMethodPattern.swift)

#### 1.3 抽象工厂模式（Abstract Factory Pattern）

- 抽象工厂模式(Abstract Factory Pattern)：提供一个创建一系列相关或相互依赖对象的接口，而无须指定它们具体的类。
- Demo 地址: [AbstractFactoryPattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Abstract-Factory-Pattern/AbstractFactoryPattern.swift)

#### 1.4 单例模式（Singleton Pattern）

- 单例模式(Singleton Pattern)：单例模式确保某一个类只有一个实例，并提供一个访问它的全剧访问点。
- Demo 地址: [SingletonPattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Singleton-Pattern/SingletonPattern.swift)

#### 1.5 生成器模式（Builder Pattern）

- 生成器模式(Builder Pattern)：也叫创建者模式，它将一个复杂对象的构建与它的表示分离，使得同样的构建过程可以创建不同的表示。
- Demo 地址: [BuilderPattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Builder-Pattern/BuilderPattern.swift)

#### 1.6 原型模式（Prototype Pattern）

-  原型模式（Prototype Pattern）: 通过“复制”一个已经存在的实例来返回新的实例,而不是新建实例。被复制的实例就是我们所称的“原型”，这个原型是可定制的。
- Demo 地址: [PrototypePattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Prototype-Pattern/PrototypePattern.swift)

### 2. 结构型设计模式

结构型设计模式分为：

- [外观模式（Facade Pattern）](#21-外观模式facade-pattern)
- [适配器模式（Adapter Pattern）](#22-适配器模式adapter-pattern)
- [桥接模式（Simple Factory Pattern）](#23-桥接模式simple-factory-pattern)
- [代理模式（Proxy Pattern）](#24-代理模式proxy-pattern)
- [装饰者模式（Decorator Pattern）](#25-装饰者模式decorator-pattern)
- [享元模式（Flyweight Pattern）](#26-享元模式flyweight-pattern)

#### 2.1 外观模式（Facade Pattern）

- 外观模式定义了一个高层接口，为子系统中的一组接口提供一个统一的接口。外观模式又称为门面模式，它是一种结构型设计模式模式。
- Demo 地址: [FacadePattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Facade-Pattern/FacadePattern.swift)

#### 2.2 适配器模式（Adapter Pattern）

- 适配器模式(Adapter Pattern) ：将一个接口转换成客户希望的另一个接口，使得原本由于接口不兼容而不能一起工作的那些类可以一起工作。适配器模式的别名是包装器模式（Wrapper），是一种结构型设计模式。
- Demo 地址: [AdapterPattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Adapter-Pattern/AdapterPattern.swift)

#### 2.3 桥接模式（Simple Factory Pattern）

- 桥接模式(Simple Factory Pattern)：将抽象部分与它的实现部分分离,使它们都可以独立地变化。
- Demo 地址: [BridgePattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Bridge-Pattern/BridgePattern.swift)

#### 2.4 代理模式（Proxy Pattern）

- 代理模式(Proxy Pattern) ：为某个对象提供一个代理，并由这个代理对象控制对原对象的访问。
- Demo 地址: [ProxyPattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Proxy-Pattern/ProxyPattern.swift)

#### 2.5 装饰者模式（Decorator Pattern）

- 装饰模式(Decorator Pattern) ：不改变原有对象的前提下，动态地给一个对象增加一些额外的功能。
- Demo 地址: [DecoratorPattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Decorator-Pattern/DecoratorPattern.swift)

#### 2.6 享元模式（Flyweight Pattern）

- 享元模式(Flyweight Pattern)：运用共享技术复用大量细粒度的对象,降低程序内存的占用,提高程序的性能。
- Demo 地址: [FlyweightPattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Flyweight-Pattern/FlyweightPattern.swift)


### 3. 行为型设计模式

#### 3.1 责任链模式（Chain of Responsibility Pattern）

- 责任链模式（Chain of Responsibility Pattern）：为请求创建了一个接收者对象的链，每个接收者都包含对另一个接收者的引用。如果一个对象不能处理该请求，那么它会把相同的请求传给下一个接收者，依此类推。
- Demo 地址: [ChainOfResponsibility.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Chain-Of-Responsibility/ChainOfResponsibility.swift)

#### 3.2 命令模式（Command Pattern）

- 命令（Command）模式：将一个请求封装为一个对象，使发出请求的责任和执行请求的责任分割开。这样两者之间通过命令对象进行沟通，这样方便将命令对象进行储存、传递、调用、增加与管理。
- Demo 地址: [Command.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Command/Command.swift)

#### 3.3 解释器模式（Interpreter Pattern）

- 解释器（Interpreter）模式：给分析对象定义一个语言，并定义该语言的文法表示，再设计一个解析器来解释语言中的句子。也就是说，用编译语言的方式来分析应用中的实例。这种模式实现了文法表达式处理的接口，该接口解释一个特定的上下文。
- Demo 地址: [Interpreter.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Interpreter/Interpreter.swift)

#### 3.4 迭代器模式（Iterator Pattern）

- 迭代器（Iterator），提供一种方法顺序访问一个聚合对象中的各种元素，而又不暴露该对象的内部表示。
- Demo 地址: [Iterator.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Iterator/Iterator.swift)

#### 3.5 模板模式（Template Method Pattern）

- 在模板模式（Template Method Pattern）中，定义一个操作中的算法的框架，而将一些步骤的执行延迟到子类中，使得子类可以在不改变算法的结构的前提下即可重新定义该算法的某些特定步骤。
- Demo 地址: [TemplateMethodPattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Template-Method-Pattern/TemplateMethodPattern.swift)

#### 3.6 策略模式（Strategy Pattern）

- 策略模式(Strategy Pattern)：定义一系列算法，将每一个算法封装起来，并让它们可以相互替换。
- Demo 地址: [StrategyPattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Strategy-Pattern/StrategyPattern.swift)

#### 3.7 状态模式（State Pattern）

- 在状态模式（State Pattern）：允许一个对象在其内部状态改变时，改变它的行为。
- Demo 地址: [StatePattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/State-Pattern/StatePattern.swift)

#### 3.8 观察者模式（Observer Pattern）

- 观察者模式(Observer Pattern)：定义对象间的一种一对多的依赖关系，使得每当一个对象状态发生改变时，其相关依赖对象都可以到通知并做相应针对性的处理。
- Demo 地址: [ObserverPattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Observer-Pattern/ObserverPattern.swift)

#### 3.9 中间者模式（Mediator Pattern）

- 中介者模式(Mediator Pattern)：用一个中介对象来封装一系列的对象交互，中介者使各对象之间不需要显式地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。
- Demo 地址: [MediatorPattern.swift](https://github.com/liuzhongning/Design-Patterns/blob/master/Design-Patterns/Mediator-Pattern/MediatorPattern.swift)