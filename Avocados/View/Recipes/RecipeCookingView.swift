//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Oleksii Vasyliev on 14.05.2023.
//

import SwiftUI

struct RecipeCookingView: View {
	// MARK: - Properties
	var recipe: Recipe
	
	// MARK: - Body
    var body: some View {
		HStack(alignment: .center, spacing: 12) {
			HStack(alignment: .center, spacing: 2) {
				Image(systemName: "person.2")
				Text("Serves: \(recipe.serves)")
			}
			HStack(alignment: .center, spacing: 2) {
				Image(systemName: "clock")
				Text("Prep: \(recipe.preparation)")
			}
			HStack(alignment: .center, spacing: 2) {
				Image(systemName: "flame")
				Text("Cooking: \(recipe.cooking)")
			}
		}
		.font(.footnote)
		.foregroundColor(.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
		RecipeCookingView(recipe: Recipe.recipes[0])
    }
}
