import Foundation

enum TravelerType{
    case Student
    case family
    case employee
}

struct Destination{
    var placeName: String
    var budget: Int
}

protocol canRecommend{
    func recommendPlace()
}
class TravelSathi: canRecommend{
    var userName: String
    var travelerType: String
    var userbudget : Int
    
    var destination = [
        Destination(placeName: "GOA" , budget: 10000),
        Destination(placeName: "Vrindavan", budget: 5000),
        Destination(placeName: "Banarsa", budget: 6000),
        Destination(placeName: "Ramesaram", budget: 10000)
    ]
    init(
        userName: String,
        travelertype: String,
        userbudget: Int
    )
    {
    self.userName = userName
    self.travelerType = travelertype
    self.userbudget = userbudget
    }
    func recommendPlace (){
        print("Travel Recommendations for \(userName)")
        print("---------------------------------------------")
            for place in destination{
                if userbudget >= place.budget{
                    print("You can visit \(place.placeName)")
            }
        }
    }
}

extension String{
    func welcomeMessage(){
        print("Welcome \(self) to TravelSathi ❤️")
    }
}

let userName = "Adarsh"
userName.welcomeMessage()
let traveler = TravelSathi(
    userName: userName,
    travelertype: "Student",
    userbudget: 8000)

traveler.recommendPlace()

