//
//  NewTaskSheetView.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 11.2.24.
//

import SwiftUI

struct NewTaskSheetView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 35){
            
            NLPTaskCardView(headline: "Generate", subheadline: "Generates a text based on input!")
            NLPTaskCardView(headline: "Classify", subheadline: "Classifies a text based on input!")
            NLPTaskCardView(headline: "Summarize", subheadline: "Summarizes a text based on input!")

        }
    }
}

#Preview {
    NewTaskSheetView()
}
