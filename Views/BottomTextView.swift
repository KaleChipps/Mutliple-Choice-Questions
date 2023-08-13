//
//  BottomTextView.swift
//  Code History Game
//
//  Created by Kyle Granquist on 8/5/23.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
        
        var body: some View {
            HStack {
                Spacer()
                Text(str)
                    .font(.body)
                    .bold()
                    .padding()
                Spacer()
            }.background(GameColor.accent)
        }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
