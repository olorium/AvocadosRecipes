//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Oleksii Vasyliev on 14.05.2023.
//

import SwiftUI

struct RecipeRatingView: View {
	// MARK: - Properties
	var recipe: Recipe
	
	// MARK: - Body
    var body: some View {
		HStack {
			ForEach(1...(recipe.rating), id: \.self) { _ in
				Image(systemName: "star.fill")
					.font(.body)
					.foregroundColor(.yellow)
			}
		}
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
		RecipeRatingView(recipe: Recipe.recipes[0])
    }
}
