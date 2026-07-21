import SwiftUI

struct ResultView: View {
    let playerName : String
    let score : Int
    let playAgain : () -> Void
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea()
        
            VStack(spacing: 30){
                Text("Game Over 🎉")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.yellow)
                
                Text("Well Played \(playerName)")
                    .font(.title2)
                    .foregroundStyle(.white)
                
                Text("⭐️ Score: \(score)/5")
                    .font(.title.bold())
                    .foregroundStyle(.white)
                
                Text("✅ Correct: \(score)")
                    .font(.title3)
                    .foregroundStyle(.green)
                
                Text("❌ Wrong: \(5 - score)")
                    .font(.title3)
                    .foregroundStyle(.red)
                
            
                Button{
                    playAgain()
                }label: {
                    Text("🔄 Play Again")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.brown)
                        )
                }
                                
                .padding(.horizontal)
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    NavigationStack {
        ResultView(playerName: "Adarsh", score: 4,  playAgain: { })
    }
}
