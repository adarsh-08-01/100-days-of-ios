//
//  ContentView.swift
//  baiceSwiftUI
//
//  Created by adarsh Kashyap on 01/07/26.
//

import SwiftUI

struct ContentView: View {
    let warriors = ["Adarsh", "Anmol", "Amol", "Vishal", "Tanu"]
    @State private var selectedwarrior = "Tanu"
        @State var tapCount = 0
            @State var notTapped = 0
                @State private var name = ""
    @State private var checkAmount = 0.0
                    @State private var numberOfPeople = 2
                    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
                        let tipPercentages = [10, 15, 20, 25, 30]
    var body: some View {
        NavigationView {
            Form {
                Section("Your destils 🧑🏽‍💻"){
                    TextField("ENter you Name", text: $name)
                    Text("your name is \(name)")
                }
                Section("Selection 🥷🏼"){
                    Picker("Select a Warrior", selection: $selectedwarrior){
                        ForEach(warriors, id: \.self){
                            Text($0)
                        }
                    }
                }
                
                Section("Money 💰"){
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "INR"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                }
                
                Section ("Group 0"){
                    Group{
                        VStack {
                            Image(systemName: "heart")
                                .imageScale(.large)
                            
                            Text("Yo,Bro Time to start SwiftUI")
                            Text("Yo,Bro Time to start SwiftUI")
                        }
                    }
                }
                Section("Group 1") {
                    Text("This text is 1 in the group 1")
                    Text("This text is 2 in the group 1")
                    Text("This text is 3 in the group 1")
                }
                Button("Tap Count: \(tapCount)"){
                    tapCount += 1
                }
                Section("Group 2") {
                    Text("This text is 1 in the group 2")
                    Text("This text is 2 in the group 2")
                    Text("This text is 3 in the group 2")
                }
                Button("Tap Count: \(notTapped)"){
                    notTapped += 1
                }
                Section("Section 1") {
                    Text("This text in section 1")
                }
                
                Section("Section 2") {
                    Text("This text in section 2")
                }
                
                
            }
            .navigationTitle("SwiftUI Learning❤️")
        }
        
        }
    }

 
#Preview {
    ContentView()
}
