//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Seika Hirori on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    let defaultSpacing: CGFloat = 30.0
    
    var body: some View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
