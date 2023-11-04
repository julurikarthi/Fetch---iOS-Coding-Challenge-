//
//  ContentView.swift
//  Fetch - iOS Coding Challenge
//
//  Created by karthik on 11/4/23.
//

import SwiftUI

struct ContentView: View {
    let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var viewModel = MealsDataViewModel()
        var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    if viewModel.dessertArray.isEmpty {
                        ProgressView("Loading")
                    }
                    if !viewModel.dessertArray.isEmpty {
                        ScrollView {
                            LazyVGrid(columns: gridItems, spacing: 16) {
                                ForEach(0..<viewModel.dessertArray.count, id: \.self) { index in
                                    NavigationLink(destination: DessertInfoView(desserID: viewModel.dessertArray[index].idMeal ?? "")) {
                                        ViewCell(imageUrl: viewModel.dessertArray[index].strMealThumb ?? "", dessertName: viewModel.dessertArray[index].strMeal ?? "")
                                    }
                                    
                                    
                                    
                                }
                            }
                            .padding(16)
                        }
                    }
                }
                
            }.onAppear(perform: {
                viewModel.fetchMealsData()
            })
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}

struct ViewCell: View {
    var imageUrl: String
    var dessertName: String
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    VStack {
                        ImageView(urlString: imageUrl)
                    }.cornerRadius(20)
                    
                    Text(dessertName).font(.custom("HelveticaNeue-Bold", size: 12)).padding(.top, 10).lineLimit(1).foregroundColor(.purple)
                }
            }
            
        }
    }
}
