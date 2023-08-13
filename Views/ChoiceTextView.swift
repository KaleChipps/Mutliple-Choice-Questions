//
//  ChoiceTextView.swift
//  Code History Game
//
//  Created by Kyle Granquist on 7/31/23.
//

import SwiftUI

struct ChoiceTextView: View {
    
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accent, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
