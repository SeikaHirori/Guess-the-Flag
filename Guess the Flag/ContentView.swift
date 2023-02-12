//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Seika Hirori on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    let defaultSpacing: CGFloat = 30.0
    
    var body: some View = bodySection1_3()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func bodySection1_3() -> some View {
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.green
            }
            Text("Your content")
                .foregroundColor(.pink)
                .padding(50)
                .background(.ultraThinMaterial)
                .font(Font.custom("Montserrat-Bold", size: 60.0))
        }
        .ignoresSafeArea()
    }
    
    
    return body
}


func bodySection1_2() -> some View {
    let defaultSpacing: CGFloat = 30.0
    var body:some View {
        Group {
            VStack(spacing: defaultSpacing) {
                HStack(spacing: defaultSpacing) {
                    Text("1")
                    Text("2")
                    Text("3")
                }
                HStack(spacing: defaultSpacing) {
                    Text("4")
                    Text("5")
                    Text("6")
                }
                HStack(spacing: defaultSpacing) {
                    Text("7")
                    Text("8")
                    Text("9")
                }
            }
        }
    }

    return body
}
