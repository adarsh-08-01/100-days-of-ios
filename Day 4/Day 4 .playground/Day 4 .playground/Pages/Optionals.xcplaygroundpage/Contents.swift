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

//  -------------------------------------------------

var userIsNew: Bool? = true
var userDidCompleteOnborading: Bool? = false
var userFavoriteMovie: String? = nil

@MainActor
func checkIfUserIsSetup() -> Bool {
    if let isNew = userIsNew, let didCompleteOnboading = userDidCompleteOnborading, let favoriteMovie = userFavoriteMovie {
        // userIsNew == Bool AND
        // userDidCompleteOnborading == Bool AND
        // userFavoriteMoviee == String
        return getUserStauts(userIsNew: isNew, userDidCompleteOnborading: didCompleteOnboading, userFavoriteMovie: favoriteMovie)
    }
    else{
        // userIsNew == nil OR
        // userDidCompeleOnborading == nil OR
        // userFavoriteMovie == nil
        return false
    }
}
@MainActor
func checkIfUserIsSetUp2() -> Bool {

        guard let isNew = userIsNew,
              let didCompleteOnborading =
                userDidCompleteOnborading,
              let favoriteMovie = userFavoriteMovie else {
            return false
        }

    // userIsNew == Bool AND
    // userDidCompleteOnborading == Bool AND
    // userFavoriteMoviee == String
    return getUserStauts(userIsNew: isNew, userDidCompleteOnborading: didCompleteOnborading, userFavoriteMovie: favoriteMovie)
    }

func getUserStauts ( userIsNew : Bool, userDidCompleteOnborading: Bool,userFavoriteMovie: String) -> Bool{
    if userIsNew && userDidCompleteOnborading{
        return true
    }
    return false
}
//  Neasted IF -let
@MainActor
func checkIfUserIsSetUp3() -> Bool {
    if let isNew = userIsNew{
        // userIsNew = Bool
        if let didCompleteOnBorading = userDidCompleteOnborading{
            // userDidCompleteOnborading
            if let favoriteMovie = userFavoriteMovie{
                return getUserStauts(userIsNew: isNew, userDidCompleteOnborading: didCompleteOnBorading, userFavoriteMovie: favoriteMovie)
            }else{
                // userIsNew == nil
                return false
                }
            } else{
                // userDidCompleteBorading == nil
                return false
            }
        } else{
            // userFavortieMovie == nil
            return false
        }
    }

//  Neasted Guard -let
@MainActor
func checkIfUserIsSetUp4() -> Bool {
    
    guard let isNew = userIsNew else{
        // userIsnew == nil
        return false
    }
    guard let didCompleteOnborading = userDidCompleteOnborading else{
        // userDidCompleteOnBoarding == nil
        return false
    }
    guard let favoriteMovie = userFavoriteMovie else{
        // userFavoritMovie == nil
        return false
    }
    
    // userIsNew == Bool AND
    // userDidCompleteOnborading == Bool AND
    // userFavoriteMoviee == String
    return getUserStauts(userIsNew: isNew, userDidCompleteOnborading: didCompleteOnborading, userFavoriteMovie: favoriteMovie)
}


// optional chaining

func getUserName() -> String? {
    return "test"
}
func getTilte() -> String {
    return "tilte"
}
@MainActor
func getUserData(){
    let username: String? = getUserName()
    // i will get the count if username is not nil
    let count = username?.count
    
    let title: String = getTilte()
    // i will get count always
    let count2 = title.count
    
    //if username has value, nd first character in username has a value, then return teh value of islowercase
    // optional chaining
    let firstCharacterIsLowercase = username?.first?.isLowercase
    
    // if will get count beacuse i 100% is not nil
    let count3 = username!.count
    
}


//safely unwrp an optional
//if let
//gurad
// nil coalscing


// explicitly unwrap optional

