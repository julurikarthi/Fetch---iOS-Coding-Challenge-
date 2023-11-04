//
//  MealsModel.swift
//  Fetch - iOS Coding Challenge
//
//  Created by karthik on 11/4/23.
//

import UIKit

// having optional varibale can previent the null variable in JSON decoder
//filter out any null or empty values from the API before displaying them.
struct MealsModel: Decodable {
    var strMeal: String?
    var strMealThumb: String?
    var idMeal: String?
}

struct Meals: Decodable {
    let meals: [MealsModel]
}
