import Foundation
/*
 1. Kya Hai? (What is Enum?)

 Enum means:

 A fixed set of possible values
 Real World Example

 Traffic Signal 🚦

 Possible values ONLY:

 red
 yellow
 green

 Nothing else.

 Perfect use case for Enum.
 */
enum tarfficLight {
    case green
    case yellow
    case red
}
var signal = tarfficLight.red

print(signal)

/*
 2. Kyun Hai? (Why Use Enum?)

 Without enum:

 var status = "red"

 Problem:

 typo possible
 invalid values possible

 Example:

 status = "reddddd"

 Swift allows it ❌

 With Enum
 signal = .red

 Only valid options allowed ✅

 Much safer.
 */

// Real IOS ex

enum LoginState{
    case LoggeIn
    case loggedOut
    case loading
}
var userState = LoginState.loading

// Using Enum with if

enum Subscription{
    case free
    case premium
}
let user = Subscription.premium
if user == .premium{
    print("Welcome Premium User")
}


// Switch uisng enum

enum Direction{
    case North
    case South
    case east
    case west
}

let playMove = Direction.North

switch playMove {
case .North:
    print("Move UP")

case .South:
    print("Move Down")

case .east:
print("Move LIFT")

case .west:
    print("Move RIGHT")
}

//Real App Examples 🔥
// Theme Mode

enum theme{
    case light
    case dark
}

// video quality

enum videoQuality{
    case low
    case medium
    case high
}

/*
 Enum with Raw Values
 Enums can store predefined values.
 */

enum WeekDay: String {
    case Monday = "MON"
    case Tuesday = "TUE"
    case Wednesday = "WED"
    case Thursday = "THU"
    case Friday = "FRI"
    case Saturday = "SAT"
    case Sunday = "SUN"
}

print(WeekDay.Monday.rawValue)
print(WeekDay.Tuesday.rawValue)
print(WeekDay.Wednesday.rawValue)

/*
 Enum Methods
 Enums can also have functions 😳🔥
 */

enum GameState{
    case start
    case pause
    case gameover
        
    func messege(){
        switch  self{
        case .start:
            print("GameStarted")
        case .pause:
            print("GamePaused")
        case .gameover:
            print("GameOvered")
        }
    }
}
let game = GameState.start

game.messege()

/*
 IMPORTANT CONCEPT → self
 
 Inside enum:
 self

 means:
 Current enum value
 */

/*
 Enum vs Struct
 
    Enum            |   Struct
 Fixed choices      | Custom object
 Limited states     | Stores data
 case               | properties
 Best for states    | Best for models
 
    Struct
 Custom object
 Stores data
 properties
 Best for models
 */

//PRACTICE TASKS 🔥
// Task 1
enum Planet{
    case earth
    case mars
    case jupiter
}
let planet = Planet.earth

print(planet)

// Task 2

enum GameLevel{
    case easy
    case medium
    case hard
}
var selectedLevel = GameLevel.hard

print(selectedLevel)

/*
 MOST IMPORTANT THINGS TO REMEMBER 🔥
 1. Enum = fixed possible values
 2. case defines options
 3. switch works great with enums
 4. Enums improve safety
 5. Enums used heavily in iOS apps
 6. Enum can have methods
 7. Enum can have raw values
 */

/*
 What is Enum in Swift?

 Answer:
 Enum is a custom type that defines a group of related fixed values.
 */
