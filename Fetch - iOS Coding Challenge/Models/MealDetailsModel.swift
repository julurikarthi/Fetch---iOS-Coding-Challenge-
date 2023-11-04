//
//  MealDetailsModel.swift
//  Fetch - iOS Coding Challenge
//
//  Created by karthik on 11/4/23.
//

import UIKit
// having optional varibale can previent the null variable in JSON decoder
//filter out any null or empty values from the API before displaying them.
struct MealDetailsModel: Decodable {
    let idMeal, strMeal: String?
    let strDrinkAlternate: String?
    let strCategory, strArea, strInstructions: String?
    let strMealThumb: String?
    let strTags: String?
    let strYoutube: String?
    let strIngredient1, strIngredient2, strIngredient3, strIngredient4: String?
    let strIngredient5, strIngredient6, strIngredient7, strIngredient8: String?
    let strIngredient9, strIngredient10, strIngredient11, strIngredient12: String?
    let strIngredient13, strIngredient14, strIngredient15, strIngredient16: String?
    let strIngredient17, strIngredient18, strIngredient19, strIngredient20: String?
    let strMeasure1, strMeasure2, strMeasure3, strMeasure4: String?
    let strMeasure5, strMeasure6, strMeasure7, strMeasure8: String?
    let strMeasure9, strMeasure10, strMeasure11, strMeasure12: String?
    let strMeasure13, strMeasure14, strMeasure15, strMeasure16: String?
    let strMeasure17, strMeasure18, strMeasure19, strMeasure20: String?
    let strSource: String?
    let strImageSource, strCreativeCommonsConfirmed, dateModified: String?
    let name: String?
    let founded: Int?
    let members: [String]?
}

struct DessertInfo: Decodable {
    let meals: [MealDetailsModel]
}

