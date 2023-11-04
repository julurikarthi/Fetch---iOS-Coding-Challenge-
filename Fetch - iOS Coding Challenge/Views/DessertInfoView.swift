//
//  DessertInfor.swift
//  Fetch - iOS Coding Challenge
//
//  Created by karthik on 11/4/23.
//

import SwiftUI

struct DessertInfoView: View {
    var desserID: String
    @ObservedObject var viewModel = MealsDataViewModel()
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    if let strMealThumb = viewModel.dessertDetails?.strMealThumb, let url = URL(string: strMealThumb) {
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } placeholder: {
                            ProgressView()
                        }
                    }
                }.cornerRadius(20).padding([.leading, .trailing], 40)
                
                if let strMeal = viewModel.dessertDetails?.strMeal {
                    HStack {
                        Text("Dessert Name: ").padding(.top, 10).padding(.leading, 40)
                        Text(strMeal).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
        
                if let strArea = viewModel.dessertDetails?.strArea {
                    HStack {
                        Text("Area: ").padding(.top, 10).padding(.leading, 40)
                        Text(strArea).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
              
                if let strInstructions = viewModel.dessertDetails?.strInstructions {
                    HStack {
                        (Text("Instructions:     ") + Text(strInstructions).bold()).padding(.top, 10).padding(.leading, 40)
                    }
                }
             
                if let strTags = viewModel.dessertDetails?.strTags {
                    HStack {
                        Text("Tags: ").padding(.top, 10).padding(.leading, 40)
                        Text(strTags).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
              
                if let strYoutube = viewModel.dessertDetails?.strYoutube {
                    HStack {
                        Text("Youtube: ").padding(.top, 10).padding(.leading, 40)
                        Text(strYoutube).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold().underline()
                    }
                }
                if let strCategory = viewModel.dessertDetails?.strCategory {
                    HStack {
                        Text("Category: ").padding(.top, 10).padding(.leading, 40)
                        Text(strCategory).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
              
                if let strIngredient1 = viewModel.dessertDetails?.strIngredient1, !strIngredient1.isEmpty {
                    HStack {
                        Text("Ingredient1: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient1).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
              
                if let strIngredient2 = viewModel.dessertDetails?.strIngredient2, !strIngredient2.isEmpty {
                    HStack {
                        Text("Ingredient2: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient2).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
                
                if let strIngredient3 = viewModel.dessertDetails?.strIngredient3, !strIngredient3.isEmpty {
                    HStack {
                        Text("Ingredient3: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient3).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
                
               
                if let strIngredient4 = viewModel.dessertDetails?.strIngredient4, !strIngredient4.isEmpty {
                    HStack {
                        Text("Ingredient4: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient4).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
               
                if let strIngredient5 = viewModel.dessertDetails?.strIngredient5, !strIngredient5.isEmpty {
                    HStack {
                        Text("Ingredient5: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient5).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
                
                if let strIngredient6 = viewModel.dessertDetails?.strIngredient6, !strIngredient6.isEmpty {
                    HStack {
                        Text("Ingredient6: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient6).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
              
                if let strIngredient7 = viewModel.dessertDetails?.strIngredient7, !strIngredient7.isEmpty {
                    HStack {
                        Text("Ingredient7: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient7).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
                
                if let strIngredient8 = viewModel.dessertDetails?.strIngredient8, !strIngredient8.isEmpty {
                    HStack {
                        Text("Ingredient8: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient8).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
               
                if let strIngredient9 = viewModel.dessertDetails?.strIngredient9, !strIngredient9.isEmpty {
                    HStack {
                        Text("Ingredient9: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient9).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
              
                if let strIngredient10 = viewModel.dessertDetails?.strIngredient10, !strIngredient10.isEmpty {
                    HStack {
                        Text("Ingredient10: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient10).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
               
                if let strIngredient11 = viewModel.dessertDetails?.strIngredient11, !strIngredient11.isEmpty {
                    HStack {
                        Text("Ingredient11: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient11).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
               
                if let strIngredient12 = viewModel.dessertDetails?.strIngredient12, !strIngredient12.isEmpty {
                    HStack {
                        Text("Ingredient12: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient12).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
               
                if let strIngredient13 = viewModel.dessertDetails?.strIngredient13, !strIngredient13.isEmpty {
                    HStack {
                        Text("Ingredient13: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient13).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
                
                if let strIngredient14 = viewModel.dessertDetails?.strIngredient14, !strIngredient14.isEmpty {
                    HStack {
                        Text("Ingredient14: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient14).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
               
                if let strIngredient15 = viewModel.dessertDetails?.strIngredient15, !strIngredient15.isEmpty {
                    HStack {
                        Text("Ingredient15: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient15).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
               
                if let strIngredient16 = viewModel.dessertDetails?.strIngredient16, !strIngredient16.isEmpty {
                    HStack {
                        Text("Ingredient16: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient16).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
               
                if let strIngredient17 = viewModel.dessertDetails?.strIngredient17, !strIngredient17.isEmpty {
                    HStack {
                        Text("Ingredient17: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient17).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
              
                if let strIngredient18 = viewModel.dessertDetails?.strIngredient18, !strIngredient18.isEmpty {
                    HStack {
                        Text("Ingredient18: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient18).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
               
                if let strIngredient19 = viewModel.dessertDetails?.strIngredient19, !strIngredient19.isEmpty {
                    HStack {
                        Text("Ingredient19: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient19).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
                
                if let strIngredient20 = viewModel.dessertDetails?.strIngredient20, !strIngredient20.isEmpty {
                    HStack {
                        Text("Ingredient20: ").padding(.top, 10).padding(.leading, 40)
                        Text(strIngredient20).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold()
                    }
                }
               
                if let source = viewModel.dessertDetails?.strSource, !source.isEmpty  {
                    HStack {
                        Text("Source: ").padding(.top, 10).padding(.leading, 40)
                        Text(source).padding(.top, 10).frame(maxWidth: .infinity, alignment: .leading).bold().underline()
                    }
                }
               
            }
        }.onAppear(perform: {
            viewModel.fetchMealsDatails(dessertId: desserID)
        })
    }
}

#Preview {
    DessertInfoView(desserID: "")
}
