//
//  ProfileView.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 16.2.24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .center) {

            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 80)

            HStack {
                Text("Ardi")
                    .font(.system(size: 30))
                Text("JORGANXHI")
                    .font(.system(size: 35, weight: .semibold))
            }

            

        }
    }
}

#Preview {
    ProfileView()
}
