//
//  PokemonService.swift
//  student645147
//
//  Created by user270892 on 1/16/25.
//


import Foundationclass PokemonService {    private let apiClient = PokemonApiClient.shared        func fetchPokemons(completion: @escaping (Result<PokemonResponse, Error>) -> Void) {        apiClient.fetchPokemons { result in            switch result {            case .success(let data):                do {                    let response = try JSONDecoder().decode(PokemonResponse.self, from: data)                    completion(.success(response))                } catch {                    completion(.failure(error))                }            case .failure(let error):                completion(.failure(error))            }        }    }}