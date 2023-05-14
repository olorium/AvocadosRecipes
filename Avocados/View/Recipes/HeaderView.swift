//
//  HeaderView.swift
//  Avocados
//
//  Created by Oleksii Vasyliev on 14.05.2023.
//

import SwiftUI

struct HeaderView: View {
	// MARK: - Properties
	/// Flag defining if headline is shown.
	@State private var showHeadline = false
	
	private var slideInAnimation: Animation {
		Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
			.speed(1)
			.delay(0.25)
	}
	
	// MARK: - Internal properties
	/// The header for this view.
	var header: Header
	
	// MARK: - Body
    var body: some View {
		ZStack {
			Image(header.image)
				.resizable()
				.aspectRatio(contentMode: .fill)
			
			HStack(alignment: .top, spacing: 0) {
				Rectangle()
					.fill(Color("ColorGreenLight"))
					.frame(width: 4)
				
				VStack(alignment: .leading, spacing: 6) {
					Text(header.title)
						.font(.system(.title, design: .serif))
						.fontWeight(.bold)
						.foregroundColor(.white)
						.shadow(radius: 3)
					
					Text(header.subHeadline)
						.font(.footnote)
						.lineLimit(2)
						.multilineTextAlignment(.leading)
						.foregroundColor(.white)
						.shadow(radius: 3)
				}
				.padding(.vertical, 0)
				.padding(.horizontal, 20)
				.frame(width: 281, height: 105)
			.background(Color("ColorBlackTransparentLight"))
			}
			.frame(width: 285, height: 106, alignment: .center)
			.offset(x: -66, y: showHeadline ? 75 : 220)
			.animation(slideInAnimation)
			.onAppear {
				showHeadline = true
			}
		}
		.frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
		HeaderView(header: Header.headers[0])
			.previewLayout(.sizeThatFits)
    }
}
