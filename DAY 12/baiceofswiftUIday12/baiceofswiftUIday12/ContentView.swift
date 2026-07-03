//
//  ContentView.swift
//  baiceofswiftUIday12
//
//  Created by adarsh Kashyap on 03/07/26.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfpeople = 2
    @State private var tipPercentage: Int = 20
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [0, 10, 15, 20, 30]
    var totalPerperson: Double {
        let peopleCount = Double(numberOfpeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount/100 * tipSelection
        let grandTotal = (checkAmount + tipValue)
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    var body: some View {
        NavigationView{
            Form{
                Section("Money 💴"){
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "INR"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Kitna Ladka logo ko", selection: $numberOfpeople){
                        ForEach(2..<100){
                            Text("\($0) ladka log")
                        }
                    }
                }
                Section ("Segmented type picker"){
                    Text("How much tip you want to leave?")
                    Picker("TipPercentage", selection: $tipPercentage){
                        ForEach(tipPercentages, id: \.self){
                            Text("\($0)%")
                        }
                        
                    }.pickerStyle(.segmented)
                }
                Section{
                    Text(
                        totalPerperson,
                        format: .currency(
                            code: Locale.current.currency?.identifier ?? "INR"
                        )
                    )
                }
            }
            .navigationTitle("SwiftUI Learning 🚀")
            .toolbar{
                ToolbarItemGroup(placement: .keyboard ){
                    Spacer()
                    Button("Done"){
                         amountIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
