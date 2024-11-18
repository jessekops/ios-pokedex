//
//  PokemonResponse.swift
//  student645147
//
//  Created by user271057 on 11/18/24.
//


struct PokemonResponse: Decodable {    struct Result: Decodable {        let name: String        let url: String    }    let results: [Result]}