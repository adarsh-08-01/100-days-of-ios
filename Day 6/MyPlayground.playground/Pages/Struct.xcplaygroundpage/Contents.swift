import Foundation

//struct dog{
//    let name : String
//}
//let myDog = dog(name:"tummy")
//
//print(myDog.name)
//
//struct student{
//    let name : String
//    let rollno : Int
//}
//let myStudent = student(name: "Adarsh", rollno: 14)
//
//print(myStudent.name)
//print(myStudent.rollno)
///* moblie stock and brand details checking
// */
//struct moblie{
//    let brand : String
//    let stocks : Int
//}
//let moblie1 = moblie(brand: "iphone", stocks: 10)
//let moblie2 = moblie(brand: "samasung", stocks: 10)
//
//print(moblie1.brand)
//print(moblie2.brand)
//
///*Structs are VALUE TYPES.
//
//Means copy gets created.
// If you write on photocopy,
// original paper does NOT change.
//
// That is struct behavior.*/
//
//struct User{
//    var name: String
//}
//var user1 = User(name: "Adarsh")
//var user2 = user1
//
//user2.name = "Robin"
//print(user1.name)
//print(user2.name)
//
//
//
//// practice
//
//struct player{
//    var name : String
//    var score : Int
//    
//    mutating func increaseScore(){
//        score += 23
//    }
//    
//    var level:String{
//        if score > 50 {
//            return "Pro"
//        }
//        else{
//            return "chal chal baap se sikha kar aa"
//        }
//    }
//}
//
//var p1 = player(name: "Adarsh", score: 29)
//p1.increaseScore()
//
//print(p1.score)
//print(p1.level)
//
//
//// Multiple Initializers
//
//struct user{
//    var name : String
//    var age : Int
//
//    init(name: String)
//    {
//        self.name = name
//        self.age = 0
//    }
//    init(name: String, age : Int){
//        self.name = name
//        self.age = age
//    }
//}
//let u1 = user(name: "Adarsh")
//let u2 = user(name: "Robin", age: 21)
//
//print (user2)
//print (user1)

// Practice

struct instagram{
    var username : String
    var follower : Int
    var following : Int
    var post : Int
    var bio : String
    
    func showProfile() {
        print("""
       Username: \(username)
       Bio: \(bio)
       Followers: \(follower)
       """)
    }
    var accountType: String{
        if follower > 800{
            return "Account Type: Normal"
        }else{
            return "Account Type: popular"
        }
    }
}
let user01 = instagram(
                    username: "adarsh_k_08",
                    follower: 555,
                    following: 600,
                    post: 101,
                    bio: "A Man is made by his belives,As he believer. So he becomes")
let user02 = instagram(
    username: "aniket_kk",
    follower: 730,
    following: 1117,
    post: 60,
    bio: "Life is a film, and the camera is in my Hands")

//print("""
//Username: \(user01.username)
//Bio: \(user01.bio)
//Followers: \(user01.followr)
//""")
//print("--------")
//print("""
//Username: \(user02.username)
//Bio: \(user02.bio)
//Followers: \(user02.followr)
//""")

user01.showProfile()
print(user01.accountType)
print("--------")
user02.showProfile()
print(user02.accountType)
