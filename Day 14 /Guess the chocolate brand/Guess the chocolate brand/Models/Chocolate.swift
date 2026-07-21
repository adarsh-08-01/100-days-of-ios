//
//  Chocolate.swift
//  Guess the chocolate brand
//
//  Created by adarsh Kashyap on 16/07/26.
//

import Foundation

struct Chocolate : Identifiable{
    let id = UUID()
    
    let name:String
    let image:String
}
let chocolates: [Chocolate] = [
    Chocolate(name: "5 Star", image: "five_star"),
        Chocolate(name: "Chupa Chups", image: "chupa_chups"),
        Chocolate(name: "Dairy Milk", image: "Daily_milk"),
        Chocolate(name: "Galaxy", image: "Galaxy"),
        Chocolate(name: "Hershey's", image: "Hersheys"),
        Chocolate(name: "Kinder Joy", image: "kinderjoy"),
        Chocolate(name: "Kit Kat", image: "Kit_Kat"),
        Chocolate(name: "M&M", image: "M&M"),
        Chocolate(name: "Snickers", image: "SNICKERS"),
        Chocolate(name: "Toblerone", image: "toblerone")
]
