import UIKit

import Foundation
import PlaygroundSupport

/*
 1 Use and understand Swift's basic types like Bool, Int, String, and Double
Створіть константи із вказаними значеннями двома способами (явно вказуючи тип і неявно)
Перевірте себе функцією type(of: тут вкажіть назву константи)
а) ціле число 1
b) дійсне число 1.0
с) рядок, що містить фразу Hello world!
d) рядок, що містить фразу The number is та константу з числом 42
e) хибне значення
f) істинне значення
*/

let a = 1
type(of: a)
let a1:Int = 1
type(of: a1)

let b0 = 1.0
type(of: b0)
let b1:Double = 1.0
type(of: b1)

let hello = "Hello world!"
type(of: hello)
let hello1:String = "Hello world!"
type(of: hello1)

let num = 42
let rez = "The number is \(num)"
type(of: rez)
let rez2:String = "The number is \(num)"
type(of: rez2)

let q = 1, w = 2
var t = q == w
type(of: t)
var x:Bool = w != q
type(of: x)

/*
 2 Declare and use variables and constants (var let)
a) Зробіть константу цілого типу зі значенням 3
b) Зробіть змінну типу рядок зі значенням "The three is "
c) Змініть значення змінної на таке, що містить раніше створену константу
*/

let num3 = 3
var text:Any = "The three is "
text = num3
type(of: text)

/*
 3 Handle flow control and looping constructs (if for while switch)
a) Створіть розгалуження яке до змінної b додасть число 1 якщо b додатнє і відніме - якщо від'ємне
b) Пройдіть циклом по числам від 1 до 10 і виведіть їх (використайте спочатку for потім while)
c) Використайте switch із цілочисельною змінною який виведе фразу "Low" для значень від 1 до 18, "High" для 19-36, "Zero" для 0 та "Unknown" для решти значень
*/

var b = -1
if b > 0 {
    b += 1
} else {
    b -= 1
}

for m in 1 ... 10 {
    print (m)
}

var k = 1
while k <= 10 {
    print (k)
    k += 1
}

var numb = 0
switch numb {
case 1 ... 18 :
    print("Low")
case 19 ... 36 :
    print("Higt")
case 0 :
    print("Zero")
default:
    print("Unknown")
}

/*
4 Create and use collections (Array Set Dictionary)
a) Створіть масив (Array) цілих чисел та посортуйте його
b) Створіть дві множини (Set) цілих чисел та знайдіть їх перетин
с) Створіть Dictionary в якому ключем виступає рядок а значенням будь-який тип і заповніть його
*/

var number:Array <Int> = [3,5,7,9,4]
number.sort()
print(number)

let num1:Set = [12,45,876,4,0]
let num2:Set = [2,50,8,4,9,876,8]
num1.intersection(num2).sorted()

let dict:Dictionary = ["room1" : 1, "room2" : 2, "room3" : 3, "room4" : 4, "room5" : 5]
print(dict)
/*
 5 Develop and use simple functions ( inout ->  )
а) Створіть функцію яка приймає на вхід масив і віддає найчастіше повторюване значення в ньому
b) Створіть функцію яка приймає на вхід масив і змінює його ж, додаючи до кожного значення 1
*/

let num5 = [2,5,8,4,9,8,]

func findDuplicat (input: [Int]) -> [Int] {
    var dub = 0
    var i = input.makeIterator()
    while let c = i.next() {
        var j = i
        while let d = j.next() {
            if c == d { dub = c }
        }
    }
    return [dub]
}
findDuplicat (input: num5)



func plusmus (input: [Int]) -> Array <Int> {
    let numbs = input.map ({$0 + 1})
    return numbs
}
plusmus (input: num5)


/*
 6-7 Cast objects safely from one type to another ( as! as? as init). Handle optionals and unwrap them safely (if let ; guard let ; != nil)
Створіть функцію яка приймає на вхід змінну типу Any? і вертає рядок в якому міститься тип значення переданої змінної.
(!) Для виконання цього завдання НЕ використовуйте метод type(of: ).
(!!) Для виконання цього завдання МОЖНА використовувати наступні конструкції (спробуйте кожну з них в окремії функції)
a) `if let`
b) `guard let`
c) switch.
*/

/*
 6-7 Cast objects safely from one type to another ( as! as? as init). Handle optionals and unwrap them safely (if let ; guard let ; != nil)
Створіть функцію яка приймає на вхід змінну типу Any? і перевіряє тип значення на String, Int, Double, Float та інші базові типи.
Результат виконання функції - рядок з відповідним типом або "Unknown type" якщо визначити тип не вдалось.
(!) Для виконання цього завдання НЕ використовуйте метод type(of: ).
(!!) Для виконання цього завдання МОЖНА використовувати наступні конструкції (спробуйте кожну з них в окремії функції)
a) `if let`
b) switch.
*/


func some (input: Any?) -> String {
    if let input = input as? String { print ("String")
    } else if let a = input as? Int { print ("Int")
    } else if let b = input as? Double { print ("Double")
    } else if let c = input as? Float { print ("Float")
    } else if let d = input as? Array<Any> { print ("Array")
    } else if let e = input as? Bool { print ("Bool")
    }
    return ("Unknown type")
}
    
func some1 (input: Any?) -> String {
    if let i = input {
        switch true {
            case i is String:
                print ("String")
            case i is Int:
                print ("Int")
            case i is Double:
                print ("Double")
            case i is Float:
                print ("Floay")
            case i is Array<Any>:
                print ("Array")
            case i is Bool:
                print ("Bool")
        default:
            print ("Unknown type")
        }
    }
    return ("Unknown type")
}


some1 (input: t)

some (input: num5)
print (some)


//Створіть такі класи - двигун, автомобіль, дисплей
//Автомобіль - класс через який користувач взаємодіє з двигуном (може керувати швидкістю, включати/включати двигун). Також автомобіль містить інфу про його модель та виводить поточний стан на Дисплей
//Двигун - класс який безпосередньо крутить колеса, керує гальмом. В нього є максимальна швидкість і стан вкл/викл
//Дисплей - це класс який ТІЛЬКИ показує статус автомобіля і двигуна (швидкість, обороти і т. п. )
//
//+ обов'язково
//доповніть кожен клас власними методами і полями (хоча б по одному на клас)
//
//Залийте код із плейграунду на gist як не секретний сніппет і напишіть сюди, що ви зробили домашку


//клас автомобіль:
class Car {
        let model: String
        var isActive = false
        init (_ model: String) {
            self.model = model
        }
    func swith() {
        isActive = true
    }
}


//клас двигун:
class Engine {
        let snEngi: String
        init (_ snEngi: String) {
            self.snEngi = snEngi
        }
        let maxSpeed = 220
        var speedEngine = 0
        var switchEngine: String? {
            didSet {
                print ("Welcome, start You engine (on/off)")
                print ("You engine is \(String(describing:switchEngine))")
            }
        }
        var speed = 0 {
            didSet {
                speed = speedEngine / 100
                speed = speed > maxSpeed ? 215 : speed
                print ("You speed is: \(speed) km/h")
            }
        }
}


//клас дисплей:
class Display {
    var speedEngen: Int = 0
    var speed: Int = 0
    var onOff: String = " "
    
    func prin () {
            print ("speed is - \(speed)km/h")
            print ("speed engen - \(speedEngen)")
            print ("active engine - \(onOff)")
        }
    }

// клас трактор

class Tractor: Car {
    
    class Scoop {
        var active = false
        var horizont: Int = 0
        var vertical: Int = 0
        
    }
    override func swith() {
//        active = true
    }
    
    
}
