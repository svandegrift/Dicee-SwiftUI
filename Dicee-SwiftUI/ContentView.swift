//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Steven Vandegrift on 8/2/20.
//  Copyright © 2020 Steven Vandegrift. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.red)
                        .frame(width: 150, height: 70, alignment: .center)
                        .overlay(
                            Text("Roll")
                                .font(.system(size: 50))
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .padding()
                        )
                }
            }
        }
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


