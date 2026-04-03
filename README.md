# 🚀 100 Days of iOS Development

Welcome to my **public journey of becoming an iOS Developer**.

In this challenge, I am learning **Swift and iOS development step by step** while documenting my daily progress and building real-world applications.

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
