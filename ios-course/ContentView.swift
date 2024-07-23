//
//  ContentView.swift
//  ios-course
//
//  Created by kodsurfer on 14.07.2024.
//
import SwiftUI


enum NavigationType {
    case push
    case present
    case custom
}

struct ContentView: View {
    @State private var navigationPath = NavigationPath()

    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack {
                Button("Push Screen") {
                    navigate(to: Text("Pushed Screen"), type: .push)
                }
                Button("Present Screen") {
                    navigate(to: Text("Presented Screen"), type: .present)
                }
                Button("Custom Screen") {
                    navigate(to: Text("Custom Screen"), type: .custom)
                }
                Button("Clear All Screens") {
                    navigationPath = NavigationPath()
                }
            }
            .navigationDestination(for: Text.self) { screen in
                screen
            }
        }
    }

    private func navigate(to screen: Text, type: NavigationType) {
        switch type {
        case .push:
            navigationPath.append(screen)
        case .present:
            // Для презентации можно использовать sheet или fullScreenCover
            // В данном примере используем sheet для простоты
            navigationPath.append(screen)
        case .custom:
            // Для кастомной анимации можно использовать transition
            // В данном примере просто добавляем в стек
            navigationPath.append(screen)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
