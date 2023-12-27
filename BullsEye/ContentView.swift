//
//  ContentView.swift
//  BullsEye
//
//  Created by Mohsin on 2023-12-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
                .kerning(2.0)
            Text("89")
                .font(.title)
            HStack {
                Text("1")
                    .bold()
                    .padding(.trailing)
                Slider(value: .constant(50), in:1.0...100.0)
                Text("100")
                    .bold()
                    .padding(.leading)
                
            }

            
            Button("Hit me"){
                
            }
        }
       
    }
}

#Preview {
    ContentView()
}
