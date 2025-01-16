//
//  PokemonRepository.swift
//  student645147
//
//  Created by user270892 on 1/16/25.
//


import Foundationclass PokemonRepository {    private let service = PokemonService()        func getPokemons(completion: @escaping (Result<[Pokemon], Error>) -> Void) {        service.fetchPokemons { result in            switch result {            case .success(let response):                let pokemons = ModelMapper.mapResponseToPokemon(response: response)                completion(.success(pokemons))            case .failure(let error):                completion(.failure(error))            }        }    }}