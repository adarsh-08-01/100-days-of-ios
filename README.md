# 🚀 100 Days of iOS Development

Welcome to my **public journey of becoming an iOS Developer**.

In this challenge, I am learning **Swift and iOS development step by step** while documenting my  progress and building real-world applications.

---

## 👨‍💻 About Me

Hi, I'm **Adarsh Kashyap**  
🎓 B.Tech CSE Student  
📱 Aspiring iOS Developer  
💡 Passionate about clean code, Swift, and building impactful applications.

🌐 **Website**  
👉 https://codewithadarsh08.netlify.app/

This repository represents my commitment to **learning consistently and improving every single day.**

---

# 📅 Progress Log

## ✅ Day 1 – Swift Introduction & Setup

- Installed **Xcode**
- Learned how **Swift files work**
- Wrote my **first Swift program**
- Understood `print()` statements
- Basic **Swift syntax structure**

---

## ✅ Day 2 – Variables, Constants & If-Else

### 🔹 Variables vs Constants

- `let` → Constant (cannot change value)
- `var` → Variable (value can change)

Example:

```swift
let someConstant: Bool = true
var someVariable: String = "Hello"
```

---

## ✅ Day 3 – Operators & Functions
### 🔹 Operators
- Arithmetic operators (`+`,`-`, `*`, `/`)
- Comparison operators (`==`, `!=`, `>`, `<`, `>=`, `<=`)
- Logical operators (`&&`, `||`, `!`)
- Operator precedence (PEMDAS)

Example:
```swift
if (likeCount > 3 && commentCount > 0) || likeCount < 5 {
    print("Condition satisfied")
}
```

### 🔹 Functions
- Function declaration
- Function calling
- Functions with parameters
- Functions with return values
- Code reusability

Example:

```swift
func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool {
    return didCompleteOnboarding && profileIsCreated
}
```

---

## ✅ Day 4 – Optionals & Safe Unwrapping
### 🔹 Optionals

Optionals represent values that may exist or may be nil.
```swift
let myBool: Bool = false
let otherBool: Bool? = nil
```

### 🔹 Nil Coalescing Operator (`??`)

Provides a default value when an optional is nil.

```swift
let newValue: Bool = otherBool ?? false
```

### 🔹 Optional Binding (if let)

Safely unwrap optional values.
```swift
if let newValue = userIsPremium {
    return newValue
} else {
    return false
}
```

### 🔹 Guard Let

Used for early exit when optional value is nil.
```swift
guard let userIsPremium else {
    return false
}
```

### 🔹 Optional Chaining

Safely access properties of optional values.
```swift
let username: String? = getUserName()
let count = username?.count
```

### 🔹 Force Unwrapping (!)

Directly extract value from an optional.
```swift
let count = username!.count
```

⚠️ If the value is `nil`, the app will crash.

---

## ✅ Day 5 – Tuples

### 🔹 What I Learned

- Swift functions normally return **one value**
- **Tuples** allow returning multiple values from a function
- Access tuple values using **index (`.0`, `.1`, `.2`)**
- Use **named tuples** for better readability
- Tuples can also be **passed as parameters to functions**

---

### 🔹 Tuple Example

Tuples allow combining multiple pieces of data.

```swift
let userData = ("Adarsh", true, false)

print(userData.0)
print(userData.1)
print(userData.2)
```
---
---

## ✅ Day 6 – Structs in Swift

### 🔹 What I Learned

- Created custom data types using `struct`
- Stored related properties inside structs
- Learned that structs are **Value Types**
- Used methods inside structs
- Learned about `mutating` functions
- Created computed properties
- Used multiple initializers
- Built a real-world Instagram profile model using structs

---

### 🔹 Basic Struct Example

```swift
struct Dog {
    let name: String
}

let myDog = Dog(name: "Tommy")
```



---

## ✅ Day 7 – Enums in Swift

### 🔹 What I Learned

- Created Enums using `enum`
- Learned that Enums represent a fixed set of possible values
- Used Enums with `if` conditions
- Used `switch` statements with Enums
- Learned about Raw Values in Enums
- Added methods inside Enums
- Understood the difference between Structs and Enums
- Built real-world examples like Traffic Lights, Login States, Themes, and Game States

---

### 🔹 Basic Enum Example

```swift
enum TrafficLight {
    case green
    case yellow
    case red
}

var signal = TrafficLight.red

print(signal)

print(myDog.name)
```

---

## ✅ Day 8 – Classes & Inheritance in Swift

### 🔹 What I Learned

- Created Classes using `class`
- Learned the difference between Structs and Classes
- Understood that Classes are **Reference Types**
- Used properties and methods inside classes
- Learned about `init()` constructors
- Used `private(set)` for controlled access
- Learned about `deinit`
- Built real-world examples like Bank Account, YouTube Channel, and Game Player
- Learned about Inheritance and Method Overriding
- Understood the `===` identity operator

---

### 🔹 Basic Class Example

```swift
class Cat {

    var name: String = "Billu Don"
}
```
---

## ✅ Day 9 – Protocols in Swift

### 🔹 What I Learned

- Learned what Protocols are in Swift
- Understood that Protocols define rules/contracts
- Learned how Classes and Structs adopt protocols
- Used protocol methods and properties
- Learned about `{ get }` and `{ get set }`
- Understood the difference between Protocols and Inheritance
- Built real-world examples using Protocols

---

### 🔹 What is a Protocol?

A Protocol is a blueprint or contract that defines required properties and methods.

Example:

```swift
protocol CarDrive {
    func drive()
}
```

---

# ✅ Day 10 – Arrays, Loops, Dictionaries, Sets & Extensions

Today I learned important Swift collection types and reusable code concepts.

---

# 🔹 Arrays

Arrays store multiple values in a single collection.

### Example

```swift
var fruits = ["apple", "banana", "cherry"]

print(fruits)
print(fruits[0])
```

### Array Operations

#### Add Value

```swift
fruits.append("Orange")
```

#### Remove Value

```swift
fruits.remove(at: 1)
```

#### Count Values

```swift
print(fruits.count)
```

---

# 🔹 Loops

Loops are used to repeat code multiple times.

### Loop Through Array

```swift
for fruit in fruits {
    print(fruit)
}
```

### Number Loop

```swift
for number in 1...10 {
    print(number)
}
```

---

# 🔹 Dictionaries

Dictionaries store data in **Key → Value** pairs.

### Example

```swift
var student = [
    "name": "Adarsh",
    "course": "BTech",
    "college": "Kanpur Institute of Technology"
]
```

### Access Dictionary Value

```swift
print(student["name"])
```

### Safe Access Using Nil Coalescing

```swift
print(student["name"] ?? "No Name")
print(student["course"] ?? "No Course")
```

---

# 🔹 Sets

Sets store only unique values.

### Example

```swift
var numbers: Set = [1,2,2,3,3,4,5]

print(numbers)
```

### When to Use Sets?

- Unique usernames
- Unique IDs
- Tags

---

# 🔹 Extensions

Extensions add new functionality to existing types.

### Int Extension

```swift
extension Int {

    func square() -> Int {
        return self * self
    }
}

print(6.square())
```

---

### String Extension

```swift
extension String {

    func welcomeMessage() {
        print("Hello, \(self)")
    }
}

let name = "Adarsh"

name.welcomeMessage()
```

---
