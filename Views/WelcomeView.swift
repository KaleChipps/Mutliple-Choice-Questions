//
//  WelcomeView.swift
//  Code History Game
//
//  Created by Kyle Granquist on 8/5/23.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView{
            ZStack{
                GameColor.main.ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack(alignment: .leading, spacing: 0){
                        Text("Select the correct answers to the following questions")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Spacer()
                    NavigationLink(destination: GameView(),
                                   label: {
                        BottomTextView(str: "Okay let's begin!")
                    })
                    .foregroundColor(.white)
                    
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
