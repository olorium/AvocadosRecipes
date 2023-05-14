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
	var headers = Header.headers
	
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
				
				// MARK: - Footer
				VStack(alignment: .center, spacing: 20) {
					Text("All About Avocados")
						.font(.system(.title, design: .serif))
						.fontWeight(.bold)
						.foregroundColor(Color("ColorGreenAdaptive"))
						.padding(8)
					
					Text("Everything you wanted to know about avocados but were too afraid to ask.")
						.font(.system(.body, design: .serif))
						.multilineTextAlignment(.center)
						.foregroundColor(.gray)
					
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
