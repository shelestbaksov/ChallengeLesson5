//
//  ContentView.swift
//  ChallengeLesson5
//
//  Created by Leysan Latypova on 24.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo").padding()
                Spacer()
                
                HStack{
                    Spacer()
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                
                Spacer()
                Image("dealbutton")
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .foregroundColor(Color.white)
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .foregroundColor(Color.white)
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
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
