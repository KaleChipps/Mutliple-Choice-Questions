//
//  ContentView.swift
//  Code History Game
//
//  Created by Kyle Granquist on 7/14/23.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()

    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea();
            VStack{
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.gameIsOver), label: {EmptyView()})
        )
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
