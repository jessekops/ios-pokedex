//
//  Pokemon.swift
//  student645147
//
//  Created by user271057 on 11/18/24.
//


struct Pokemon: Identifiable {    let id: Int    let name: String    var imageUrl: String {        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(id).png"    }}