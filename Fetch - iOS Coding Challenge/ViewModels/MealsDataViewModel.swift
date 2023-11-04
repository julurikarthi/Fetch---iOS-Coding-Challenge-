//
//  MealsDataViewModel.swift
//  Fetch - iOS Coding Challenge
//
//  Created by karthik on 11/4/23.
//

import UIKit
import Combine
class MealsDataViewModel: ObservableObject {

   @Published var dessertArray: [MealsModel] = []
    @Published var dessertDetails: MealDetailsModel?
    private var cancellables: Set<AnyCancellable> = []

    let mealsListUrl = "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert"
    let mealsDetailsUrl = "https://themealdb.com/api/json/v1/1/lookup.php?i="

    func fetchMealsData() {
        NetWorkManager.manager.request(url: mealsListUrl)?.decode(type: Meals.self, decoder: JSONDecoder()).receive(on: DispatchQueue.main).sink { completion in
            switch completion {
            case .finished:
                break
            case .failure(let error):
                print("Network request error: \(error)")
            }
        } receiveValue: { meals in
            ///  Dessert category, sorted  alphabetically
            self.dessertArray = meals.meals.sorted { $0.strMeal ?? "" < $1.strMeal ?? "" }
        }.store(in: &cancellables)
    }
    
    func fetchMealsDatails(dessertId: String) {
        NetWorkManager.manager.request(url: (mealsDetailsUrl + dessertId))?.decode(type: DessertInfo.self, decoder: JSONDecoder()).receive(on: DispatchQueue.main).sink { completion in
            switch completion {
            case .finished:
                break
            case .failure(let error):
                print("Network request error: \(error)")
            }
        } receiveValue: { meals in
            self.dessertDetails = meals.meals.first
        }.store(in: &cancellables)
    }
}
