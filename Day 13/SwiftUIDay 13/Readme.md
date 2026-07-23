---

# ✅ Day 13 – Buttons, Images, Alerts & Layouts in SwiftUI

Today I learned how to make SwiftUI apps more interactive using buttons, images, alerts, and different layouts. I also started building a simple **"Guess the Chocolate Brand"** game.

---

## 🔹 What I Learned

- Built layouts using `VStack` and `ZStack`
- Used different SwiftUI background styles
- Learned about Gradients
- Created different types of Buttons
- Used SF Symbols with `Label`
- Displayed images from Assets
- Showed Alerts using `.alert()`
- Used `ForEach` to create views dynamically
- Displayed images with `.resizable()` and `.scaledToFit()`
- Started building an image-based game

---

# 🔹 VStack

`VStack` arranges views vertically.

```swift
VStack {
    Text("Hello")
    Text("SwiftUI")
}
```

---

# 🔹 ZStack

`ZStack` places views on top of each other.

```swift
ZStack {
    Color.mint
    Text("Hello SwiftUI")
}
```

---

# 🔹 Gradients

SwiftUI provides multiple gradient types.

### Linear Gradient

```swift
LinearGradient(
    colors: [.orange, .yellow],
    startPoint: .top,
    endPoint: .bottom
)
```

### Radial Gradient

```swift
RadialGradient(
    colors: [.yellow, .orange],
    center: .center,
    startRadius: 20,
    endRadius: 200
)
```

### Angular Gradient

```swift
AngularGradient(
    colors: [.red, .yellow, .green, .blue],
    center: .center
)
```

---

# 🔹 Buttons

Basic Button

```swift
Button("Tap Me") {

}
```

Bordered Button

```swift
Button("Save") {

}
.buttonStyle(.bordered)
```

Prominent Button

```swift
Button("Continue") {

}
.buttonStyle(.borderedProminent)
```

---

# 🔹 Labels

Combine text and SF Symbols.

```swift
Label("Edit", systemImage: "pencil")
```

---

# 🔹 Alerts

Alerts display important information to the user.

```swift
.alert("Important Message", isPresented: $showAlert) {

    Button("Delete", role: .destructive) { }

    Button("Cancel", role: .cancel) { }

} message: {

    Text("Please read this message.")
}
```

---

# 🔹 Images

Display images from Assets.

```swift
Image("Kit Kat")
    .resizable()
    .scaledToFit()
```

Resize image

```swift
.frame(width: 200, height: 200)
```

---

# 🔹 ForEach

Creates multiple views dynamically.

```swift
ForEach(0..<3) { number in

    Text("\(number)")
}
```

---

# 🔹 Guess the Chocolate Brand

Started building a simple image-based game.

```swift
Text(chocolateBrands[correctAnswer])

ForEach(0..<3) { number in

    Button {

    } label: {

        Image(chocolateBrands[number])
            .resizable()
            .scaledToFit()
    }
}
```

---

# 🎯 Important Interview Questions

### 1️⃣ What is `VStack`?

A layout container that arranges views vertically.

---

### 2️⃣ What is `ZStack`?

A layout container that layers views on top of each other.

---

### 3️⃣ What is `ForEach` used for?

`ForEach` creates multiple SwiftUI views from a collection of data.

---

### 4️⃣ Why do we use `.resizable()`?

It allows an image to change its size.

---

### 5️⃣ What does `.scaledToFit()` do?

It scales the image while maintaining its original aspect ratio.

---

### 6️⃣ What is an Alert in SwiftUI?

An Alert displays important information or asks the user to confirm an action.

---

### 7️⃣ What is the purpose of `Button`?

A Button performs an action when tapped.

---

### 8️⃣ What are SF Symbols?

SF Symbols are Apple's built-in icon library used in SwiftUI and UIKit.

---

# ⭐ Quick Revision

- `VStack` = Vertical layout
- `ZStack` = Layered layout
- `Button` = User interaction
- `Label` = Text + Icon
- `Alert` = Pop-up message
- `Image` = Display assets
- `ForEach` = Repeat views
- `.resizable()` = Resize image
- `.scaledToFit()` = Maintain aspect ratio
- Gradients = Beautiful backgrounds

---

# 🚀 Day 13 Summary

Today I learned:
- SwiftUI layouts (`VStack`, `ZStack`)
- Gradients
- Buttons and Labels
- Alerts
- Image handling
- Dynamic UI using `ForEach`
- Started building my first **Guess the Chocolate Brand** game.
