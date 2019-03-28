import UIKit
/*
 空对象模式
    空对象模式（Null Object Pattern）是通过实现一个默认的无意义对象来避免null值出现，简单地说，就是为了避免在程序中出现null值判断而诞生的一种常用设计方法
我们只要定义一个默认的映射对象是NullAnimal，就可以解决空值判断的问题，提升代码的可读性。这就是空对象模式（一些项目组把它作为编码规范的一部分），非常简单，但非常实用
最佳实践
    1.空对象模式是通过空代码实现一个接口或抽象类的所有方法，以满足开发需求，简化程序
    2.它如此简单，以至于我们经常在代码中看到和使用，对它已经熟视无睹了，而它无论是事前规划或事后重构，都不会对我们的代码产生太大冲击，这也是我们“藐视”它的根本原因
 */

protocol Animal
{
    func makeSound()
}

class Dog: Animal
{
    public func makeSound() {
        print("\(type(of: self)) \(#function)");
    }
}

class Person
{
    public func hear(_ animal: Animal?) {
        //输入参数animal是应该做空值判断
        if let temp = animal {
            temp.makeSound()
        }
    }

    public func hear2(animal: Animal = NullAnimal()) {
        //增加了NullAnimal类后，在Person类中就不需要"animal!=null"这句话了，因为我们提供了一个实现接口的所有方法，不会再产生null对象
        animal.makeSound()
    }
}

class NullAnimal: Animal
{
    public func makeSound() {
        print("Null Object")
    }
}

let p = Person()
p.hear2()
let d = Dog()
p.hear(d)
p.hear(nil)
