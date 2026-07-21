//
//  GameView.swift
//  Guess the chocolate brand
//
//  Created by adarsh Kashyap on 16/07/26.
//

import SwiftUI

struct GameView: View {
    @State private var score = 0
    @State private var questionsNumber = 1
    @State private var currentChoice: [Chocolate] = []
    @State private var correctAnswer = 0
//    @State private var showScore = false
    @State private var scoreTitle = ""
    @State private var showResult = false
    let playerName: String

    var body: some View{
        ZStack{
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 25){
                HStack{
                    Text("Question\(questionsNumber)/5")
                        .font(.headline)
                    
                    Spacer()
                    
                    Text("⭐️\(score)")
                        .font(.headline)
                }
                .foregroundStyle(.white)
                .padding(.horizontal)
                
//                Spacer()
                
                Text("Tap the Chocolate Brand")
                    .font(.title2.bold())
                    .foregroundStyle(.white)
                if !currentChoice.isEmpty{
                    Text(currentChoice[correctAnswer].name)
                        .font(.largeTitle.bold())
                        .foregroundStyle(.yellow)
                    Spacer()

                    ForEach(currentChoice.indices, id: \.self) { index in
                        
                        Button {
                            logoTapped(index)
                        } label: {
                            
                            Image(currentChoice[index].image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .padding()
                                .background(.white.opacity(0.9))
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                    }
                }
                Spacer()
              Text("Code by Adarsh❤️")
                    .foregroundStyle(.white)
            }
            .padding()
            
        }
        .onAppear{
            askQuestion()
        }
        .navigationDestination(isPresented: $showResult) {

            ResultView(
                playerName: playerName,
                score: score
            ){
                resetGame()
            }

        }
    }
    func askQuestion(){
        
        currentChoice = Array(chocolates.shuffled().prefix(3))

        correctAnswer = Int.random(in: 0..<3)
    }
    func logoTapped(_ index: Int) {

        if index == correctAnswer {
            score += 1
        }

        if questionsNumber == 5 {
            showResult = true
        } else {
            questionsNumber += 1
            askQuestion()
        }
    }
    func resetGame() {
        score = 0
        questionsNumber = 1
        showResult = false
        askQuestion()
    }
}
#Preview{
    NavigationStack{
        GameView(playerName: "Adarsh")
    }
}
