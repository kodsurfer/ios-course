//
//  SwiftUIView.swift
//  ios-course
//
//  Created by kodsurfer on 23.07.2024.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var phoneNumber = ""
    
    var body: some View {
    NavigationView {
                VStack(spacing: 20) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    Text("Введите ваш номер телефона")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    TextField("+7 (___) ___-__-__", text: $phoneNumber)
                        .keyboardType(.phonePad)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    
                    Button(action: {
                        // Действие при нажатии на кнопку
                    }) {
                        Text("Отправить")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Text("Нажимая кнопку «Отправить», вы принимаете условия использования")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                .padding()
                .navigationTitle("Авторизация")
    }
}
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
