//
//  PokemonCardView.swift
//  student645147
//
//  Created by user271057 on 11/18/24.
//


import SwiftUIstruct PokemonCardView: View {    let pokemon: Pokemon    var body: some View {        VStack {            Text("#\(pokemon.id)")                .font(.caption)                .foregroundColor(.gray)                .frame(maxWidth: .infinity, alignment: .leading)            AsyncImage(url: URL(string: pokemon.imageUrl)) { image in                image.resizable().scaledToFit()            } placeholder: {                ProgressView()            }            .frame(width: 80, height: 80)            Text(pokemon.name.capitalized)                .font(.headline)                .frame(maxWidth: .infinity, alignment: .center)                .lineLimit(1)        }        .padding()        .background(Color.white)        .cornerRadius(10)        .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 5)    }}