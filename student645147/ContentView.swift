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
                Label("Pokémon", systemImage: "house")
            }
            
            NavigationView {
                FavoritesScreen()
            }
            .tabItem {
                Label("Favorites", systemImage: "star")
            }
        }
        .background(Color(hex: "#EDF6FF")) 
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
