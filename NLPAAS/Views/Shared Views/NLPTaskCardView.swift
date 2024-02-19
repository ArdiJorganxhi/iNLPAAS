//
//  NLPTaskCardView.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 11.2.24.
//

import SwiftUI

struct NLPTaskCardView: View {
    @State var headline: String
    @State var subheadline: String
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
          Image(systemName: "plus.circle.fill")
            .resizable()
            .frame(width: 50, height: 50)
            .padding(.trailing, 15)
            .foregroundStyle(.blue)
            VStack(alignment: .leading) {
                Text(headline)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.blue)
                Text(subheadline)
                    .font(.system(size: 12))
                    .foregroundStyle(.gray)
                
                    .padding(.leading, 1)
            }
          Spacer()
        }
        .frame(width: 300)

    }
}

#Preview {
    NLPTaskCardView(headline: "Generate", subheadline: "Generates a text based on your input!")
}
