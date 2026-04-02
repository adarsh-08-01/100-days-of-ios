import Foundation


// There is alway a value which show value and it is boolean
let myBool: Bool = false

// we don't know is there is value,but if there is, it is boolean
let otherBool: Bool? = nil

//print(otherBool)
//otherBool = true
//print(otherBool)
//otherBool = false
//print(otherBool)
//otherBool = nil


let newValue: Bool? = otherBool

let newValue2: Bool = otherBool ?? false

print ("newValue2: \(newValue2.description)")

var myString: String? = "Hello"

print(myString ?? "There is no value")

myString = "new text!"
print(myString ?? "There is no value")

myString = nil
print(myString ?? "There is no value")

//  let newStraing = myString ?? "some default value"

// ------------------------------------------------------------------

var userIsPremium: Bool? = nil
@MainActor
func checkIfUserIsPremium() -> Bool? {
    return userIsPremium
}
@MainActor
func checkIfUserIsPremium1() -> Bool? {
    return userIsPremium ?? false
}
let isPremium = checkIfUserIsPremium()


// if let
@MainActor
func checkIfUserIsPremium3() -> Bool? {
    // If there is a value, let newValue equal that value
    if let newValue = userIsPremium{
        //Here we have access to the non-optional value
        return newValue
    }else{
        return false
     }
}
@MainActor
func checkIfUserIsPremium4() -> Bool? {
    if let userIsPremium{
        return userIsPremium
    }
    else{
        return false
    }
}

//Guard
@MainActor
func checkIfUserIsPremium5() -> Bool? {
    
    guard let userIsPremium else {
        return false
    }
    return newValue
}
