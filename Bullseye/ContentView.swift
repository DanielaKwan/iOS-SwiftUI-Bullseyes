//
//  ContentView.swift
//  Bullseye
//
//  Created by Andres Kwan on 9/23/19.
//  Copyright © 2019 Kwan Daniela. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    
    var body: some View {
            VStack {
                // Target row
                HStack{
                Text("Put the bullseye as lose as you can to:")
                }
                // Slider row
                
                // Button row
                
                Button(action:{
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
                                 message: Text("This is my first pop-up."),
                                 dismissButton: .default(Text("Awesome!")))
                }
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
