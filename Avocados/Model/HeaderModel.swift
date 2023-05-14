//
//  HeaderModel.swift
//  Avocados
//
//  Created by Oleksii Vasyliev on 14.05.2023.
//

import Foundation

/// A model for the header section
struct Header {
	/// Image name.
	let image: String
	/// Title for the header.
	let title: String
	/// SubHeadline for the geader.
	let subHeadline: String
}

// MARK: - Data
extension Header {
	var headers: [Self] {
		[Header(
			image: "avocado-slice-1",
			title: "Avocados",
			subHeadline: "Avocados are a powerhouse ingredient at any meal for anyone."
		),
		 Header(
			image: "avocado-slice-2",
			title: "Healthy",
			subHeadline: "Avocados are good for us and they can be part of our healthy diet."
		 ),
		 Header(
			image: "avocado-slice-3",
			title: "Nutrients",
			subHeadline: "Avocados have a surprising amount and diversity of vitamins and minerals."
		 ),
		 Header(
			image: "avocado-slice-4",
			title: "Delicious",
			subHeadline: "Craving more guacamole? Find the best guacamole recipes in the app."
		 ),
		 Header(
			image: "avocado-slice-5",
			title: "Tasty",
			subHeadline: "Avocados are a good source of natural fiber, which making you feel full."
		 ),
		 Header(
			image: "avocado-slice-6",
			title: "Recipes",
			subHeadline: "Enjoy these carefully handpicked avocado recipes for every occasion!"
		 )]
	}
}
