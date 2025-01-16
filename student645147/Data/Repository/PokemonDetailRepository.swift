//
//  PokemonDetailRepository.swift
//  student645147
//
//  Created by user270892 on 1/16/25.
//


import Foundationclass PokemonDetailRepository {    private let service = PokemonDetailService()    private let favoritesKey = "favorites"    func getPokemonDetail(for id: Int, completion: @escaping (Result<PokemonDetail, Error>) -> Void) {        service.fetchPokemonDetail(for: id) { result in            switch result {            case .success(let response):                let detail = PokemonDetailModelMapper.mapResponseToDetail(response: response)                completion(.success(detail))            case .failure(let error):                completion(.failure(error))            }        }    }    func isFavorite(id: Int) -> Bool {        let favorites = UserDefaults.standard.array(forKey: favoritesKey) as? [Int] ?? []        return favorites.contains(id)    }    func toggleFavorite(id: Int) -> Bool {        var favorites = UserDefaults.standard.array(forKey: favoritesKey) as? [Int] ?? []        let isCurrentlyFavorite = favorites.contains(id)        if isCurrentlyFavorite {            favorites.removeAll { $0 == id }        } else {            favorites.append(id)        }        UserDefaults.standard.set(favorites, forKey: favoritesKey)        return !isCurrentlyFavorite    }}