//
//  ContentView.swift
//  ios-course
//
//  Created by kodsurfer on 14.07.2024.
//
import SwiftUI

struct ContentView: View {
    @State private var phoneNumber = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Введите код телефона")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 50)
            
            Text("Мы отправили вам SMS с кодом на номер")
                .font(.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
            
            Text("+7 (999) 123-45-67")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            HStack(spacing: 10) {
                ForEach(0..<4) { index in
                    TextField("", text: $phoneNumber)
                        .frame(width: 60, height: 60)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .multilineTextAlignment(.center)
                        .keyboardType(.numberPad)
                        .onChange(of: phoneNumber) { newValue in
                            if newValue.count > 4 {
                                phoneNumber = String(newValue.prefix(4))
                            }
                        }
                }
            }
            .padding(.horizontal, 20)
            
            Button(action: {
            }) {
                Text("Подтвердить")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 20)
            .padding(.top, 30)
            
            Spacer()
        }
        .padding()
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
