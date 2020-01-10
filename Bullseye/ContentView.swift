//
//  ContentView.swift
//  Bullseye
//
//  Created by Daniela Kwan on 9/23/19.
//  Copyright © 2019 Kwan Daniela. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var sliderValue: Double = 50.0
    
    var body: some View {
        VStack {
            Spacer()
            // Target row
            HStack{
                Text("Put the bullseye as lose as you can to:")
                Text("100")
            }
            //HStack
            
            // Slider row
            Spacer()
            HStack{
                Text("1")
                Slider(value: self.$sliderValue, in: 1...100)
                Text("100")
            }
            
            // Button row
            Button(action:{//function
                print("Button-action - self.alertIsVisible = \(self.alertIsVisible)")
                let nombre:String = "Hit Me!"
                print(nombre, separator: " - ", terminator: "\n")
                self.alertIsVisible = true
                print("Button-action - self.alertIsVisible = \(self.alertIsVisible)")
            }) {
                Text("Hit Me!")
                    .foregroundColor(Color.purple)
            }.alert(isPresented: $alertIsVisible) { () -> Alert in
                print("Button-alert - selfalertIsVisible = \(self.alertIsVisible)")
                
                
                return Alert(title: Text("Hello there!"),
                             message: Text("The slider's value is  \(self.sliderValue)."),                              dismissButton: .default(Text("Awesome!")))
            }
            //alert
            Spacer()
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Start over")
                }
                Spacer()
                Text("Score:")
                Text("999999")
                
                Spacer()
                //
                Text("Round:")
                Text("999")
                
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Info")
                }
            }
            Spacer()
            //VStack
        }
    }
}

struct ContentView_Previews:
PreviewProvider {
    static var previews: some View {
        ContentView() .previewLayout(
            .fixed(width: 896, height: 414))
    }
}

//print(_ items: Any..., separator: String = " ", terminator: String = "\n")
