import Foundation

func myFirstFunction()
{
    print("MY FIRST FUNCTION IN SWIFT!")
    mySecondFunction()
}

func mySecondFunction()
{
print("MY SECOND FUNCTION IN SWIFT!")
}
myFirstFunction()


func getUserName() -> String
{
    let username: String = "ADARSH"
    return username
}

func checkIfUserIsPremium() -> Bool
{
    return false
}

let name: String = getUserName()
print(name)

//-----------------------------------------------------
func showFirstScreen() {
    
    var userDidCompleteOnboarding: Bool = false
    var userProfileIsCreated: Bool = true
    
    let status = checkUserStatus(
        didCompleteOnboarding: userDidCompleteOnboarding,
        profileIsCreated: userProfileIsCreated
    )
    
    print(status)
}
func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool {
    if didCompleteOnboarding && profileIsCreated {
        return true
    }
    else{
        return false
    }
}
