//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Seika Hirori on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    let defaultSpacing: CGFloat = 30.0
    
    var body: some View = bodySection1_5()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func bodySection1_5() -> some View {
    
    var body: some View {
        Group {
            VStack {
                Button("Button 1") { }
                    .buttonStyle(.bordered)
                Button("Button 2", role: .destructive) { }
                    .buttonStyle(.bordered)
                Button("Button 3") { }
                    .buttonStyle(.borderedProminent)
                    .tint(.mint)
                Button("Button 4", role: .destructive) {}
                    .buttonStyle(.borderedProminent)
                Button {
                    print("Button was tapped :3")
                } label: {
                    Text("Tap me!!! uWu")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.orange)
                }
                
                Button {
                    print("Edit button was tapped :O")
                } label: {
                    Image(systemName: "pencil")
                }
            }
        }
    }
    
    return body
}


func bodySection1_4() -> some View {
    
    var body: some View {
        Group {
            ZStack {
                AngularGradient(gradient: Gradient(colors: [.red, .yellow,.green, .blue, .purple, .cyan]), center: .center)
                
                Text("hello :3")
                    .foregroundColor(.pink)
                    .background(Color.yellow)
            }
        }
    }
    return body
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
