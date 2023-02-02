//
//  ContentView.swift
//  ChallengeLesson5
//
//  Created by Leysan Latypova on 24.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo").padding()
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                Button {
                    let playerRandomNum = Int.random(in: 2...14)
                    let cpuRandomNum = Int.random(in: 2...14)
                    
                    playerCard = "card\(playerRandomNum)"
                    cpuCard = "card\(cpuRandomNum)"
                    
                    if playerRandomNum > cpuRandomNum {
                        playerScore += 1
                    } else if playerRandomNum < cpuRandomNum {
                        cpuScore += 1
                    }
                } label: {
                    Image("dealbutton")
                }

                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .foregroundColor(Color.white)
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("\(playerScore)")
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .foregroundColor(Color.white)
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("\(cpuScore)")
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                   
                Spacer()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
