//
//  ContentView.swift
//  Avocados
//
//  Created by Oleksii Vasyliev on 08.05.2023.
//

import SwiftUI

struct ContentView: View {
	// MARK: - Properties
	/// Array of headers.
	let headers = Header.headers
	/// Array of facts.
	let facts = Fact.facts
	/// Array of recipes
	let recipes = Recipe.recipes
	
	// MARK: - Body
    var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack(alignment: .center, spacing: 20) {
				// MARK: - Header
				ScrollView(.horizontal, showsIndicators: false) {
					HStack(alignment: .top, spacing: 0) {
						ForEach(headers) { header in
							HeaderView(header: header)
						}
					}
				}
				
				// MARK: - Dishes
				Text("Avocado Dishes")
					.fontWeight(.bold)
					.modifier(TitleModifier())
				
				DishesView()
					.frame(maxWidth: 640)
				
				// MARK: - Facts
				Text("Avocado Facts")
					.fontWeight(.bold)
					.modifier(TitleModifier())
				
				ScrollView(.horizontal, showsIndicators: false) {
					HStack(alignment: .top, spacing: 60) {
						ForEach(facts) { fact in
							FactsView(fact: fact)
						}
					}
					.padding(.vertical)
					.padding(.leading, 60)
					.padding(.trailing, 20)
				}
				
				// MARK: - Recipes
				Text("Avocado Recipes")
					.fontWeight(.bold)
					.modifier(TitleModifier())
				
				VStack(alignment: .center, spacing: 20) {
					ForEach(recipes) { item in
						RecipeCardView(recipe: item)
					}
				}
				.frame(maxWidth: 640)
				.padding(.horizontal)
				
				// MARK: - Footer
				VStack(alignment: .center, spacing: 20) {
					Text("All About Avocados")
						.fontWeight(.bold)
						.modifier(TitleModifier())
					
					Text("Everything you wanted to know about avocados but were too afraid to ask.")
						.font(.system(.body, design: .serif))
						.multilineTextAlignment(.center)
						.foregroundColor(.gray)
						.frame(minHeight: 60)
					
				}
				.frame(maxWidth: 640)
				.padding()
				.padding(.bottom, 85)
			}
		}
		.edgesIgnoringSafeArea(.all)
		.padding(0)
    }
}

// MARK: - Title modifier
struct TitleModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.system(.title, design: .serif))
			.foregroundColor(Color("ColorGreenAdaptive"))
			.padding(8)
	}
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
