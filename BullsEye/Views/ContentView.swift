//
//  ContentView.swift
//  BullsEye
//
//  Created by Mohsin on 2023-12-27.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPut the Bullseye as close as you can to".uppercased())
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0)
                .padding(.horizontal, 30)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                    .padding(.trailing)
                Slider(value: $sliderValue, in:1.0...100.0)
                Text("100")
                    .bold()
                    .padding(.leading)
                
            }
            .padding()
            
            Button("Hit me!".uppercased()){
                alertIsVisible = true
            }
            .padding(20.0)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(21)
            .font(.title3)
            .alert("Hello there!",
                   isPresented: $alertIsVisible,
                   actions: { 
                Button("Awesome") {
                    print("Alert closed")
                }
                
            },
                   message: {
                let roundedValue: Int = Int(sliderValue.rounded())
                Text("""
                     The slider's value is \(roundedValue).
                     You scored \(game.points(sliderValue: roundedValue)) points this round.
                     """)
                
            } )
        }
       
    }
}

#Preview {
    ContentView()
}
