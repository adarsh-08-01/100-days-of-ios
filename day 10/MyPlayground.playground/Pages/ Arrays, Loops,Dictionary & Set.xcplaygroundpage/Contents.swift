import Foundation

// arrays

var fruits = ["apple", "banana", "cherry"]

print(fruits)
print(fruits[0])

/*
 IMPORTANT 😳

 Arrays use:

 Index

 Starting from:

 0
 VISUAL 🔥
 0 → Apple
 1 → Banana
 2 → cherry
 */
//Add Value
fruits.append("Orange")

//Remove Value
fruits.remove(at: 1)

//Count
print(fruits.count)


// LOOPS 🔥

for fruit in fruits {

    print(fruit)
}


for number in 1...10{
    print(number)
}

// DICTIONARY 🔥
/*
 What is Dictionary?

 Stores:

 Key → Value pair
 */
//var student = [
//    "name": "Adarsh",
//    "city": "Kanpur"
//]
///*
// Dictionary access returns:
// Optional
// Because key may not exist.
// */
//print(student["name"])

//Safer Way
//print(student["name"] ?? "No Name")

// SET 🔥
/*
 Set stores: Unique values only
 */
var numbers: Set = [1,2,3,4,4,5]
print(numbers)
/*
 WHEN USE SET?

 When uniqueness matters.

 Examples:

 unique usernames
 unique IDs
 tags
 */

//EXTENSIONS 🔥🔥🔥

/*
 Extension means: Add new functionality to existing type

 WITHOUT modifying original code.
 */

//extension String {
//    func sayHello( ){
//        print("Hello, \(self)")
//    }
//}
///*IMPORTANT
// self
// means: current string object
// */
//let name = "Adarsh"
//print(name)


/*
 REAL iOS USAGE 😄

 Extensions used EVERYWHERE for:
 1. cleaner architecture
 2. reusable code
 3. helper methods
 */
extension Int{
    func square() -> Int {
        return self * self
    }
}
print(6.square())

//Practice 1
var favorite = ["Instagram","youtube","xcode"]

for favorite in favorite {
    print(favorite)
}

//Practice 2
for number in 1...10 {
    print(number)
}

//Practice 3
var student = [
    "name" : "Adarsh",
    "coures" : "BTech",
    "college" : "Kanpur institude of technology"
]
print(student["name"] ?? "No Name")
print(student["coures"] ?? "No Coures")
print(student["college"] ?? "No College")

//Practice 4
var number : Set = [1,2,2,3,3,4,6,5]
print(number)

//Practice 5
extension String{
    func welcomeMaseage (){
        print("hello, \(self)")
    }
}
let name = "Adarsh"

name.welcomeMaseage()
