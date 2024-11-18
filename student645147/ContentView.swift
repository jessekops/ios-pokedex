//
//  ContentView.swift
//  student645147
//
//  Created by user271057 on 11/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                NavigationView {
                    MainScreenView()
                }
                .tabItem {
                    Label("Main", systemImage: "house")
                }
                
                NavigationView {
                    FavoritesScreen()
                }
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
            }
        }
    }

#Preview {
    ContentView()
}
