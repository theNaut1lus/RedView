//
//  ContentView.swift
//  RedView
//
//  Created by Sidak Singh Aulakh on 26/3/2024.
//

import SwiftUI

struct ContentView: View {
    @State var step = 22
    @State var color: Color = .color
    
    var lyrics = [
        "Missing him was",
        "Loving him was"
    ]
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
                .ignoresSafeArea()
            VStack (alignment: .leading) {
                Text("I DONT KNOW ABOUT YOU")
                    .foregroundStyle(.regularMaterial)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.black)
                HStack{
                    Text("BUT I'M FEELING")
                        .foregroundStyle(.regularMaterial)
//                        .foregroundColor(.chartruse)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.black)
                    Stepper(value: $step, in: 0...50) {
                        Text(String(step) + "!")
                    }
                    .foregroundStyle(.regularMaterial)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.black)
                }
                VStack {
                    HStack{
                        ColorPicker("LOVING HIM WAS", selection: $color)
                            .foregroundStyle(.regularMaterial)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.black)
                    }
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.red)
                            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                }
                HStack {
                    Button(action: {
                        //nothing
                    }, label: {
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(.blue)
                            .frame(height: 50)
                    })
                    Button(action: {
                        //nothing
                    }, label: {
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(.red)
                            .frame(height: 50)
                    })
                    Button(action: {
                        //nothing
                    }, label: {
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(.gray)
                            .frame(height: 50)
                    })
                    Spacer()
                }
            }
            .padding()
        }
    }
}

extension Color {
    static var chartruse: Color {
        return Color(red: 1.0, green: 0.5, blue: 0.5)
    }
}

#Preview {
    ContentView()
}
