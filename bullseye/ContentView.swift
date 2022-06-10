//
//  ContentView.swift
//  bullseye
//
//  Created by Allan Ramos on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var alertVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPut the bullseye as you can to")
                .bold()
                .kerning(2.0)
                .font(.footnote)
                .lineSpacing(4.0)
                .multilineTextAlignment(.center)
            
            Text( "\(Int(self.sliderValue))")
                .bold()
                .kerning(-2.0)
                .font(.title)
                .fontWeight(.black)
            
            HStack {
                Text("1")
                Slider(
                    value: self.$sliderValue,
                    in: 1.0...100.0
                )
                Text("100")
            }
            Button(action: {
                print("Hello Swift")
                self.alertVisible = true
            }){
                
                Text("Hit me")
                
            }
            
            .alert(
                isPresented: $alertVisible,
                content: {
                    return Alert(
                        title: Text("Hello Swift"),
                        message: Text("The Slider value is: \(Int(self.sliderValue))"),
                        dismissButton: .default(Text("Awesome!"))
                    )
                
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
