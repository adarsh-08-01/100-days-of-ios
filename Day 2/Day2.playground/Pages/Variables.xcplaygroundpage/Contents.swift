import Foundation

// Constant
let someConstant: Bool = true

// Variable
var someVariable: String = "Hello, World!"

//Cannot assign to value: 'someConstant' is a 'let' constant
//someConstant = false

someVariable = "Swift is awesome!"

var myNumber = 12345679
print(myNumber)
myNumber = 24
print(myNumber)
myNumber = 124789
print(myNumber)
myNumber = 25789
print(myNumber)


//IF statements

var userIsPremium: Bool = false

if userIsPremium == true{
 print("1 - user is premium")
}
else{
    print("1.1 - user is premium")
}

if userIsPremium{
    print("2 - user is premium")
}else{
    print("2.1 - user is premium")
}

if userIsPremium == false {
    print("3 - user is premium")
}else{
    print("3.1 - user is premium")
}

if !userIsPremium {
    print("4 - user is premium")
}else{
    print("4 .1 - user is premium")
}
