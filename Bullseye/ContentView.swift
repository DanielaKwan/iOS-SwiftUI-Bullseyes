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
            Text("Welcome to my first app!")
                .fontWeight(.semibold)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.center)
            Button(action:{
                print("Button-action - self.alertIsVisible = \(self.alertIsVisible)")
                let nombre:String = "Hit you!"
                print(nombre, separator: " - ", terminator: "\n")
                self.alertIsVisible = true
                print("Button-action - self.alertIsVisible = \(self.alertIsVisible)")
            }) {
                Text("Hit you!")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//print(_ items: Any..., separator: String = " ", terminator: String = "\n")
