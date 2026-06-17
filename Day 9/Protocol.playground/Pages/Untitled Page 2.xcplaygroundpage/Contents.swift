import Foundation

/*
 1. Kya Hai? (What is Protocol?)

 Protocol means:

 Rules / Contract
 Real Life Example 🔥

 Imagine:

 Driving Rules

 If someone wants to drive:
 they MUST follow rules.

 Same in Swift.
 */
protocol CarDrive{
    func Drive()
}

class Car: CarDrive{
    func Drive() {
        print("Driving...")
    }
}
/*
 IMPORTANT 😳

 If class DOESN’T implement:
 drive()
 Swift gives error ❌
 Because:
 protocol contract broken
 */
let bmw = Car()
bmw.Drive()

/*
 MOST IMPORTANT UNDERSTANDING 🔥

 Protocol does NOT give implementation.

 It only says:

 "You MUST implement this"
 */

//Protocol Properties 🔥
//Protocols can REQUIRE properties too.

protocol HasName{
    var name:String {get}
}
//{ get }
//means: readable only
class Student: HasName{
    var name: String
    init(name: String) {
        self.name = name
    }
}

// { get set }
//means: readable,writable

protocol HasAge{
    var age:Int {get set}
}
/*
 REAL iOS Example 🔥
 struct ContentView: View

 View is protocol.

 SwiftUI built heavily on protocols.

 7. Protocol vs Inheritance 🔥
 Inheritance    Protocol
 Reuse parent class    Define behavior rules
 Tight connection    Flexible
 Only classes    Class + Struct
 "IS-A" relation    "CAN-DO" relation
 REAL UNDERSTANDING 😄
 Inheritance
 Dog IS Animal
 Protocol
 Bird CAN Fly

 BIG difference.

 MEMORY TRICK 🔥
 Class Inheritance
 What object IS
 Protocol
 What object CAN DO
 */

//Practice 1
protocol CanEat{
    func eat()
}
class Human : CanEat{
    func eat() {
        print("people can eat....")
    }
}
let human = Human()
human.eat()

//Practice 2

protocol HasHealth{
    func health()
}
class Player : HasHealth{
    func health() {
        print("100%")
    }
}

let User1 = Player()
User1.health()

protocol propertics{
    func CanRun()
    func CanAttack()
}
class GamePlayer : propertics{
    func CanRun() {
        print("Player is Running")
    }
    func CanAttack() {
        print("Player Attacked")
    }
}
let player1 = GamePlayer()
player1.CanRun()

player1.CanAttack()
/*MOST IMPORTANT THINGS TO REMEMBER 🔥
 1. Protocol = Rules/Contract
 2. Protocol defines requirements
 3. Class/Struct implements requirements
 4. Protocols work with struct & class
 5. Protocols create flexible architecture
 6. Protocol ≠ inheritance
 7. Protocol describes behavior
 MOST IMPORTANT DAY 9 UNDERSTANDING 🔥🔥🔥
 Protocol says:
 "What should exist?"

 Class/Struct says:
 "How it works."*/
