//
//  ProfileTextField.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 17.2.24.
//

import SwiftUI

struct ProfileTextField: View {
    @State var text: String
    var body: some View {
        Text(text)
            .padding()
            .frame(alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.white, lineWidth: 1)
                    .background(Color.blue.opacity(0.05))
                    .cornerRadius(10)
                    .frame(width: 300, height: 50)
            )
    }

}

#Preview {
    ProfileTextField(text: "ardi.jorganxhi@gmail.com")
}
