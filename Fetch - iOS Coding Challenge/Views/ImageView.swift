//
//  ImageView.swift
//  Fetch - iOS Coding Challenge
//
//  Created by karthik on 11/4/23.
//

import SwiftUI

struct ImageView: View {
    @ObservedObject private var imageViewModel: ImageViewModel
    
    init(urlString: String?) {
        imageViewModel = ImageViewModel(urlString: urlString)
    }
    
    var body: some View {
        Image(uiImage: imageViewModel.image ?? UIImage())
            .resizable().aspectRatio(contentMode: .fit)
    }
}
