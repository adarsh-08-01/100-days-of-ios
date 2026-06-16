import Foundation
//
///*
// CLASS IN SWIFT
// 1. Kya Hai? (What is Class?)
//
// Class is a custom data type like Struct.
//
// It groups:
//
// properties
// methods
// functions
// logic
//
// together.
// */
////
////class cat {
////    var name: String = "Billu Don"
////}
////
////let cat1 = cat()
////print(cat1.name)
//
///*
// 2. Struct vs Class ⭐ MOST IMPORTANT
//
// This is the REAL topic.
//
// STRUCT
// Value Type
//
// Creates COPY.
//
// CLASS
// Reference Type
//
// Shares SAME memory.
// */
//
////STRUCT EXAMPLE
//
////struct User {
////    var name : String
////}
////var user1 = User(name: "Adarsh")
////var user2 = user1
////
////user2.name = "Robin"
//// 
////print(user1.name)
////print(user2.name)
//
////CLASS Example 🔥
//
////class User {
////    var name: String
////    init(name: String) {
////        self.name = name
////    }
////}
////
////var user1 = User(name: "Adarsh")
////var user2 = user1
////
////user2.name = "Robin"
////
////print(user1.name)
////print(user2.name)
////
//
//
//class car {
//    var brand: String
//    
//    init(brand: String) {
//        self.brand = brand
//    }
//}
//let myCar = car(brand: "BMW")
//
//
//class Player {
//    var score = 0
//    
//    func increaseScore() {
//        score += 10
//    }
//}
//
//
//// Class are slow than struct
//// classes are storge in the heap (Memory)
//// object in heap  are references type
//// Reference Point to objects in memory  ad upadte the object in memory
//
//class screenViewModel{
//    let title : String
//    private(set)var showButton : Bool
//     
//    init(title: String, showButton: Bool) {
//        self.title = title
//        self.showButton = showButton
//    }
//    deinit{
//        // runs as object to removed from memory
//        // structs do not have deinit! becuse of it's value type
//    }
//    func hideButton(){
//        showButton = false
//    }
//    func updateShowButton(newValue: Bool){
//    showButton = newValue
//    }
//}
//
//// Noteis we use let , becaues:
//// the object itself is not changing
//// the data inside object is changing
//let viewModel: screenViewModel = screenViewModel(title: "IOSDEV", showButton: true)
////viewModel.showButton = false
//
//let value = viewModel.showButton
//viewModel.hideButton()
//viewModel.updateShowButton(newValue: false)
//
//
//
//// Pratices 1
//
//class Moblie {
//    var brand : String
//    var price: Int
//    init(brand:String,price:Int){
//        self.brand = brand
//        self.price = price
//    }
//    func showDetails(){
//        print("""
//                Brand: \(brand)
//                Price: \(price)
//                """)
//    }
//}
//var Moblie1 = Moblie(brand: "Iphone", price: 70000)
//var Moblie2 = Moblie(brand: "Samsung",price: 50000)
//
//Moblie1.showDetails()
//Moblie2.showDetails()
//
//print("--------------------------------------------------\n")
//
//// Pratices 2
//
//
//class Student{
//    var Name : String
//    var Rollno : Int
//    var Marks : Int
//    
//    init(Name : String,Rollno : Int, Marks : Int){
//        self.Name = Name
//        self.Rollno = Rollno
//        self.Marks = Marks
//    }
//    
//    func showDetails(){
//        print("""
//                Name: \(Name)
//                Rollno: \(Rollno)
//                Marks: \(Marks)
//                """)
//    }
//}
//
//let student1 = Student(Name: "Adarsh",
//                       Rollno: 14,
//                       Marks: 86)
//student1.showDetails()

// Practice 3 → BankAccount
//
//class BankAccount{
//    var Name : String
//    var balance : Int
//    
//    init(Name: String, balance: Int) {
//        self.Name = Name
//        self.balance = balance
//    }
//    
//    func deposit(amount: Int){
//        balance += amount
//    }
//    func withdraw(amount: Int){
//        if balance >= amount{
//            balance -= amount
//        }
//        else {
//            print("Insufficient Balance")
//        }
//    }
//    func showBalance(){
//        print("Current balance: \(balance)")
//    }
//    func checkBalanceStatus(){
//        if balance > 5000{
//            print("Premium")
//        }
//        else{
//            print("Normal")
//        }
//    }
//}
//var owner1 = BankAccount(Name: "Adarsh",
//                        balance: 20000)
//
////owner1.deposit(amount: 1000)
//owner1.withdraw(amount: 9500)
//owner1.showBalance()
//owner1.checkBalanceStatus()

//Practice 4 → GamePlayer

//class Game{
//    var PlayerName: String
//    var health: Int
//    
//    init(PlayerName: String, health : Int){
//        self.PlayerName = PlayerName
//        self.health = health
//    }
//    func attack(amount: Int) {
//        health -= amount
//        if health < 0 {
//            health = 0
//        }
//    }
//    func heal(amount: Int){
//        health += amount
//    }
//    func gameStatus(){
//        if health <= 0 {
//            print("Game Over")
//        } else {
//            print("Player is Alive")
//        }
//    }
//    func showHealth() {
//            print("Health: \(health)")
//        }
//    }
//
//
//let player1 = Game(PlayerName: "Adarsh",
//                   health: 100)
//player1.attack(amount: 10)
//player1.showHealth()
//player1.gameStatus()

/*
 SUPER IMPORTANT INTERVIEW QUESTION 🔥
 What does === mean in Swift?

 Answer:

 === checks whether two class variables point to the same object in memory.
 */

// Practice 7
//class YouTubeChannel{
//    var channelName: String
//    private(set) var subscribers: Int
//    init(channelName: String, subscribers : Int){
//        self.channelName = channelName
//        self.subscribers = subscribers
//    }
//    func gainSubscriber(amount: Int){
//        subscribers += amount
//    }
//    func losssubscriber (amount:Int){
//        subscribers -= amount
//        if subscribers < 0 {
//               subscribers = 0
//           }
//    }
//    func showDetails(){
//            print("""
//                    ChannelName: \(channelName)
//                    Current subscribers: \(subscribers)
//                    """)
//        }
//}
//let channel1 = YouTubeChannel(channelName: "codewithadarsh", subscribers: 10000)
//
//channel1.gainSubscriber(amount: 100)
//channel1.showDetails()

// INHERITANCE

//class Vehicle{
//    var speed : Int
//    init(speed: Int) {
//        self.speed = speed
//    }
//    func TopSpeed(){
//        print("TopSpeed: \(speed)")
//    }
//    func startEngine(){
//        print("Engine Started")
//    }
//}
//
//class Car: Vehicle{
//    override func TopSpeed() {
//        print("TopSpeed of Cars: 100-220")
//    }
//}
//class bike: Vehicle{
//    override func TopSpeed() {
//        print("TopSpeed Of Bikes : 80-180")
//    }
//}
//
//let car = Car(speed: 220)
//let bikes = bike(speed: 180)
//
//car.TopSpeed()
//bikes.TopSpeed()
//car.startEngine()
//bikes.startEngine()

//partice 10
class ScreenViewModel{
    var title : String
    private(set) var loading : Bool
    
    init(title: String, loading: Bool) {
        self.title = title
        self.loading = loading
    }
    func startLoading(){
        loading = true
    }
    func stopLoading(){
            loading = false
    }
}
let screen = ScreenViewModel(
    title: "Home Screen",
    loading: false
)

print(screen.loading)

screen.startLoading()

print(screen.loading)

screen.stopLoading()

print(screen.loading)

/*
 WHY PROFESSIONAL DEVELOPERS DO THIS 🔥

 Because class controls:

 when data changes
 how data changes
 who can modify data

 VERY important for large apps
 */
