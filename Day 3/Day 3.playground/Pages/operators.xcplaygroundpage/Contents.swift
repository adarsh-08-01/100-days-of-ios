import Foundation

//var likeCount: Double = 5
//var commentCount: Double = 0
//var viewCount: Double = 1000

// Addition
// likeCount = likeCount + 2
//likeCount += 1

//Subtraction
//likeCount = likeCount - 1
//likeCount -= 1

// Multiplication
//likeCount *= 2.5

// Order of operations does matter!!
// PEMDAS
//likeCount = likeCount - 1 * 1.5
//likeCount = (likeCount - 1) * 1.5


var likeCount: Double = 5
var commentCount: Double = 0
var viewCount: Double = 1000

//likeCount += 2
if likeCount == 5 {
    print("yes good")
}
else{
    print("Not good")
}

if likeCount != 5 {
    print(  "Not good")
}


if likeCount > 5 {
    print(  "Not good")
}


if likeCount >= 5 {
    print(  "Not good")
}

if likeCount > 3 && commentCount > 0 {
    print(  "Not good")
}
else {
    print(  "yes good")
}

if likeCount > 3 || commentCount > 0 {
    print("okay done it okay ")
}
if likeCount > 3 && commentCount > 0 || likeCount < 5 {
    print("okay,Then")
}

if likeCount > 5 {
    print("A")
}else if likeCount > 3 {
    print("B")
}else{
        print("C")
}
