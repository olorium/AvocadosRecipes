//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Oleksii Vasyliev on 14.05.2023.
//

import SwiftUI

struct RecipeCardView: View {
	// MARK: - Properties
	@State private var showModal = false
	/// Recipe for this view.
	var recipe: Recipe
	
	// MARK: - Body
    var body: some View {
		VStack(alignment: .leading, spacing: 0) {
			Image(recipe.image)
				.resizable()
				.scaledToFit()
				.overlay(
					HStack {
						Spacer()
						VStack {
							Image(systemName: "bookmark")
								.font(.title.weight(.light))
								.foregroundColor(.white)
								.imageScale(.small)
								.shadow(color: Color("ColorBlackTransparentLight"), radius: 2)
								.padding(.trailing, 20)
								.padding(.top, 22)
							Spacer()
						}
					}
				)
			
			VStack(alignment: .leading, spacing: 12) {
				Text(recipe.title)
					.font(.system(.title, design: .serif))
					.fontWeight(.bold)
					.foregroundColor(Color("ColorGreenMedium"))
					.lineLimit(1)
				
				Text(recipe.headline)
					.font(.system(.body, design: .serif))
					.foregroundColor(.gray)
					.italic()
				
				RecipeRatingView(recipe: recipe)
				
				RecipeCookingView(recipe: recipe)
			}
			.padding()
			.padding(.bottom, 12)
		}
		.background(Color.white)
		.cornerRadius(12)
		.shadow(color: Color("ColorBlackTransparentLight"), radius: 8)
		.onTapGesture {
			showModal = true
		}
		.sheet(isPresented: $showModal) {
			RecipeDetailView(recipe: recipe)
		}
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
		RecipeCardView(recipe: Recipe.recipes[0])
    }
}
