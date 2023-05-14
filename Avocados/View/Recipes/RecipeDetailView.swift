//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Oleksii Vasyliev on 14.05.2023.
//

import SwiftUI

struct RecipeDetailView: View {
	// MARK: - Properties
	@Environment(\.presentationMode) var presentationMode
	/// Recipe for this view.
	var recipe: Recipe
	
	// MARK: - Body
    var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack(alignment: .center, spacing: 0) {
				Image(recipe.image)
					.resizable()
					.scaledToFit()
				
				Group {
					Text(recipe.title)
						.font(.system(.largeTitle, design: .serif))
						.fontWeight(.bold)
						.multilineTextAlignment(.center)
						.foregroundColor(Color("ColorGreenAdaptive"))
						.padding(.top, 10)
					
					RecipeRatingView(recipe: recipe)
					
					RecipeCookingView(recipe: recipe)
					
					Text("Ingredients")
						.bold()
						.modifier(TitleModifier())
					
					VStack(alignment: .leading, spacing: 5) {
						ForEach(recipe.ingredients, id: \.self) { item in
							VStack(alignment: .leading, spacing: 5) {
								Text(item)
									.font(.footnote)
									.multilineTextAlignment(.center)
									.font(.system(.body, design: .serif))
								Divider()
							}
						}
					}
					
					Text("Instructions")
						.bold()
						.modifier(TitleModifier())
					
					ForEach(recipe.instructions, id: \.self) { item in
						VStack(alignment: .center, spacing: 5) {
							Image(systemName: "chevron.down.circle")
								.resizable()
								.frame(width: 42, height: 42, alignment: .center)
								.imageScale(.large)
								.font(.title.weight(.ultraLight))
								.foregroundColor(Color("ColorGreenAdaptive"))
							
							Text(item)
								.lineLimit(nil)
								.multilineTextAlignment(.center)
								.font(.system(.body, design: .serif))
								.frame(minHeight: 100)
						
						}
					}
				}
				.padding(.vertical, 12)
				.padding(.horizontal, 24)
			}
		}
		.edgesIgnoringSafeArea(.top)
		.overlay (
			HStack {
				Spacer()
				VStack {
					Button {
						presentationMode.wrappedValue.dismiss()
					} label: {
						Image(systemName: "chevron.down.circle.fill")
							.font(.title)
							.foregroundColor(.white)
							.shadow(radius: 4)
					}
					.padding(.trailing, 20)
					.padding(.top, 24)
					Spacer()
				}
			}
		)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
		RecipeDetailView(recipe: Recipe.recipes[0])
    }
}
