//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Seika Hirori on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries:[String] = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
        .shuffled()
    
    @State private var correctAnswer:Int = Int.random(in: 0...2)
    
    @State private var showingScore:Bool = false
    @State private var scoreTitle:String = ""
    
    @State var correctScore:Int = 0
    
    @State var selectedAnswer:Int = 0
    
    @State var questionCount:Int = 1
    
    @State var showingReset:Bool = false
    @State var resetMessage:String = ""
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.3), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            
            
            VStack {
                VStack {
                    Spacer()
                    Text("Question #\(questionCount)")
                        .font(.title.weight(.semibold))
                    Text("Guess the Flag")
                        .font(.largeTitle.bold())
                }
                .foregroundColor(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .font(.subheadline.weight(.heavy))
                            .foregroundStyle(.secondary)
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 40)
                        }
                    }
                    
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                VStack {
                    Spacer()
                    Spacer()
                    Text("Score: \(correctScore)")
                        .font(.title.bold())
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            .padding()
            
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is: \(correctScore)")
        }
        .alert(resetMessage, isPresented: $showingReset) {
            Button("Reset", action: resetCounter)
        } message: {
            Text("\(resetMessage)")
        }
    }
    
    func flagTapped(_ number:Int) {
        selectedAnswer = number
        questionCount += 1

        if number == correctAnswer {
            scoreTitle = "Correct"
            correctScore += 1
        } else {
            scoreTitle = "Wrong. That's \(countries[selectedAnswer])"
        }
        showingScore = true
        resetQuiz()
    }
    
    func askQuestion() {
        countries.shuffle() // Used wrong function
        correctAnswer = Int.random(in: 0...2)
    }
    
    func resetQuiz() {
        if questionCount > 8 {
            showingReset = true
            let finalScore:Int = correctScore
            resetMessage = "Your final score: \(finalScore)"
        }
    }
    
    func resetCounter(){
        questionCount = 1
        correctScore = 0
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
