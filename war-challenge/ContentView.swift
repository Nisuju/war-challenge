//
//  ContentView.swift
//  war-challenge
//
//  Created by Zharkyn Razbek on 01.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard="card5"
    @State private var cpuCard="card9"
    @State private var playerScore=0
    @State var cpuScore=0
    var body: some View {
        ZStack{
            Image("background").resizable().ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    let playerRandom=Int.random(in:2...14)
                    let cpuRandom=Int.random(in:2...14)

                    playerCard="card"+String(playerRandom)
                    cpuCard="card"+String(cpuRandom)
                    if (playerRandom>cpuRandom){
                        playerScore+=1
                    }
                    else if (playerRandom<cpuRandom){
                        cpuScore+=1
                    }
                    else {
                        
                    }
                },
                       label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        
                        Text(String(playerScore))
                            .font(.headline)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                         
                        Text(String(cpuScore))
                            .font(.headline)
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()

                    
                }
                Spacer()
            }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
