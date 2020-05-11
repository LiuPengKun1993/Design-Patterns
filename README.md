# 设计模式（Design-Patterns）


### 1. 创建型设计模式

创建型设计模式分为：

- [简单工厂模式（Simple Factory Pattern）](#### 1.1 简单工厂模式（Simple Factory Pattern）)
- [工厂方法模式（Factory Method Pattern）](#### 1.2 工厂方法模式（Factory Method Pattern）)
- 抽象工厂模式（Abstract Factory Pattern）
- 单例模式（Singleton Pattern）
- 生成器模式（Builder Pattern）
- 原型模式（Prototype Pattern）

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

- 外观模式（Facade Pattern）
- 适配器模式（Adapter Pattern）
- 桥接模式（Simple Factory Pattern）
- 代理模式（Proxy Pattern）
- 装饰者模式（Decorator Pattern）
- 享元模式（Flyweight Pattern）

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