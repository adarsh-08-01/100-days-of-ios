//
//  ContentView.swift
//  SwiftUIDay 13
//
//  Created by adarsh Kashyap on 04/07/26.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    var chocolateBrands = ["Daily milk", "Hershey's", "Kit Kat", "SNICKERS"]
    var correctAnswer = Int.random(in: 0...2)
    var body: some View {

//        ZStack {
//                        Color.mint
            ////                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
            ////            Text("Hello yo!")
            ////            Color.primary
            ////            Color.secondary
            //            VStack(spacing : 0){
            //                Color.mint
            //                Color.red
            //            }
            //            Text("Your Text")
            //                .foregroundStyle(.secondary)
            //                .padding(50)
            //                .background(.ultraThinMaterial)
            //        }
            //        .ignoresSafeArea()
            //    }
//                            LinearGradient(gradient: Gradient(colors: [.orange, .yellow]), startPoint: .top, endPoint: .bottom)
            //                RadialGradient(gradient: Gradient(colors: [.yellow, .orange]), center: .center, startRadius: 20, endRadius: 200)
            //        AngularGradient(gradient: Gradient(colors: [.red,.yellow,.green,.purple,.brown,.pink]), center: .center)
            //            .ignoresSafeArea()
            
//                        Button("button 1"){ }
//                            .buttonStyle(.bordered)
//                        Button("button 2", role: .destructive){ }
//                            .buttonStyle(.bordered)
//                        Button("button 3"){ }
//                            .buttonStyle(.borderedProminent)
//                        Button("button 4", role: .destructive){ }
//                            .buttonStyle(.borderedProminent)
//            
//                    Image(systemName: "heart")
//            VStack{
//                Button{
//                    print("Button was Tapped!")
//                } label: {
//                    Label("Edit", systemImage: "pencil")
//                }
//                Button{
//                    print("like button")
//                }label: {
//                    Label("Like",systemImage: "heart")
//                }
//                Button{
//                    print("comment button")
//                } label: {
//                    Label("Comment", systemImage: "message")
//                }
//                Button ("Show Alert"){
//                    showAlert = true
//                }
//                .alert("Important message", isPresented: $showAlert){
//                    Button ("Delect", role: .destructive){}
//                    Button("Cancel", role: .cancel){}
//                }
//                message:{
//                    Text("Pleas Read this Message")
//                }
//            }
//        }
//         .ignoresSafeArea() //Zstack end hera
      
        VStack {
            Text("Tap the Chocolate Brand")
            Text(chocolateBrands[correctAnswer])
        }
        ForEach(0..<3){number in
            Button {
                // Chcoclate Brand
            } label:{
//                Image(chocolateBrands[number])
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 250, height: 250)
                Image(chocolateBrands[number])
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .background(Color.gray.opacity(0.2))
            }
        }
    }
}
#Preview {
    ContentView()
}
