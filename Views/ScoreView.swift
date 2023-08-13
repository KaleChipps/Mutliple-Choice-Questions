//
//  ScoreView.swift
//  Code History Game
//
//  Created by Kyle Granquist on 8/8/23.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                Text("Final Score:")
                    .padding()
                Text("\(viewModel.percentage)%")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Spacer()
                VStack{
                    Text("\(viewModel.correctGuesses)✅")
                        .font(.title)
                    Text("\(viewModel.incorrectGuesses)❌")
                        .font(.title)
                }
                Spacer()
                NavigationLink(destination: GameView(), label:{ BottomTextView(str: "Re-Take Quiz")})
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 2, incorrectGuesses: 1))
    }
}
