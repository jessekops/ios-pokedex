//
//  PokemonDetailModelMapper.swift
//  student645147
//
//  Created by user271057 on 11/20/24.
//


////  PokemonDetailModelMapper.swift//  student645147////  Created by user271057 on 11/18/24.//import Foundationstruct PokemonDetailModelMapper {    static func mapResponseToDetail(response: PokemonDetailResponse) -> PokemonDetail {        return PokemonDetail(            id: response.id,            name: response.name,            weight: response.weight,            height: response.height,            abilities: response.abilities.map { $0.ability.name },            types: response.types.map { $0.type.name }        )    }}