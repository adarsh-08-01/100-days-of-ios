import Foundation

var userName: String = "Adarsh"
var userIsPremium: Bool = true
var userIsNew: Bool = false

@MainActor
func getUserName() -> String {
    userName
}
@MainActor
func getUserIsPremium() -> Bool {
    userIsPremium
}

// Limited to 1 return type
@MainActor
func getUserData() -> String{
    let name = getUserName()
    let ispremium = getUserIsPremium()
        return name
}
// Tuple can combin multiple piecse of data
@MainActor
func getUserData1() -> (String,Bool){
    let name = getUserName()
    let ispremium = getUserIsPremium()
        return (name,ispremium)
}

var userData1: String = userName
var userData2: (String,Bool,Bool) = (userName,userIsPremium,userIsNew)

let info1 =  getUserData1()
// let name1: String = userName2

@MainActor
func getUserData3() -> (name: String,isPremium : Bool){
    let name = getUserName()
    let ispremium = getUserIsPremium()
        return (name,ispremium)
}

let info2 = getUserData3()
let name1 =  info2.isPremium
let name2 = info2.name

@MainActor
func getUserData4() -> (name: String,isPremium : Bool,isNew:Bool){
    return (userName,userIsNew,userIsPremium)
}

@MainActor
func doSomthingWithUserData(info: (name: String,isPremium : Bool,isNew:Bool)){
    
}

let info = getUserData4()
doSomthingWithUserData(info: info)
