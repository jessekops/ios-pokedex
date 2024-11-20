//
//  PokemonDetailViewModel.swift
//  student645147
//
//  Created by user271057 on 11/20/24.
//


////  PokemonDetailViewModel.swift//  student645147////  Created by user271057 on 11/18/24.//import Foundationclass PokemonDetailViewModel: ObservableObject {    @Published var pokemonDetail: PokemonDetail?    @Published var isLoading = false    @Published var errorMessage: String?    func fetchPokemonDetail(for id: Int) {        isLoading = true        errorMessage = nil        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(id)") else { return }        URLSession.shared.dataTask(with: url) { data, response, error in            DispatchQueue.main.async {                self.isLoading = false                if let error = error {                    self.errorMessage = "Failed to load details: \(error.localizedDescription)"                    return                }                guard let data = data else {                    self.errorMessage = "No data found."                    return                }                do {                    let response = try JSONDecoder().decode(PokemonDetailResponse.self, from: data)                    self.pokemonDetail = PokemonDetailModelMapper.mapResponseToDetail(response: response)                } catch {                    self.errorMessage = "Failed to decode Pokémon details: \(error)"                }            }        }.resume()    }}