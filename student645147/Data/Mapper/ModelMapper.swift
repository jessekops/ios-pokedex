//
//  ModelMapper.swift
//  student645147
//
//  Created by user271057 on 11/18/24.
//


import Foundationstruct ModelMapper {    static func mapResponseToPokemon(response: PokemonResponse) -> [Pokemon] {        response.results.compactMap { result in            guard let id = Int(result.url.split(separator: "/").last ?? "") else {                return nil            }            return Pokemon(id: id, name: result.name)        }    }}