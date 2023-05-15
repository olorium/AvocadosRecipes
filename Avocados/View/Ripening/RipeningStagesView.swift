//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Oleksii Vasyliev on 14.05.2023.
//

import SwiftUI

struct RipeningStagesView: View {
	// MARK: - Properties
	/// Collection of ripening stages
	private var ripeningStages = Ripening.ripening

	// MARK: - Body
    var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			VStack {
				Spacer()
				HStack(alignment: .center, spacing: 25) {
					ForEach(ripeningStages) { stage in
						RipeningView(ripeningStage: stage)
					}
				}
				.padding(.vertical)
				.padding(.horizontal, 25)
				Spacer()
			}
		}
		.edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
