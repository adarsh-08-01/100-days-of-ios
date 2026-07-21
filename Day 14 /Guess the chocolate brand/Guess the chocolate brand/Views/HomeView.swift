//
//  HomeView.swift
//  Guess the chocolate brand
//
//  Created by adarsh Kashyap on 16/07/26.
//

import SwiftUI

struct HomeView: View {
    @State private var playerName = ""
    var body: some View {
        ZStack{
            ZStack {
                
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    .ignoresSafeArea()
                
//                LinearGradient(
//                    colors: [
//                        .black.opacity(0.55),
//                        .black.opacity(0.20),
//                        .black.opacity(0.70)
//                    ],
//                    startPoint: .top,
//                    endPoint: .bottom
//                )
                .ignoresSafeArea()
                VStack(spacing: 30){
                    Spacer()
                    Text("🍫")
                        .font(.system(size: 70))
                    Text("Chocolate logo Quest")
                        .font(.largeTitle.bold())
                        .foregroundStyle(.white)
                    Text("Guess The Chocolate Brand")
                        .foregroundStyle(.white.opacity(0.8))
                    
                    VStack(alignment: .leading, spacing:10){
                        Text("Player Name")
                            .foregroundStyle(.white)
                        
                        TextField("👤 Enter your name", text: $playerName)
                            .padding()
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .padding(.horizontal)
                    
                    NavigationLink{
                        GameView(playerName: playerName)
                    } label: {
                        Text("Start Game")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.brown)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    }
                    .disabled(playerName.isEmpty)
                    .padding(.horizontal)
                    
                    Spacer()
                }.padding(30)
//                    .background(.ultraThinMaterial)
//                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding(.horizontal, 24)
            }
        }
    }
}
#Preview {
    NavigationStack {
        HomeView()
    }
}
