//
//  ProfileView.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 8.2.24.
//

import SwiftUI

enum AuthStack {
    case login
    case register
}

struct ProfileView: View {
    @State private var nextNavigation: Bool = false
    @State private var authStack: AuthStack = .login
    var body: some View {
        NavigationStack {
            VStack {

                Image("ProfileImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 450)

                Text("Get started with a wonderful experience!")
                    .font(.system(size: 33, weight: .bold))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.blue)
                    .padding(.bottom, 8)


                Text("Explore NLP opportunities of AI within your mobile phone with no cost.")
                    .font(.system(size: 16, weight: .regular))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.black)
                    .padding(.bottom, 30)


                HStack(spacing: 12) {
                    Button {
                        authStack = .login
                        nextNavigation.toggle()
                    } label: {
                        Text("Login")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundStyle(.white)

                    }
                    .frame(width: 160, height: 60)
                    .background(.blue)
                    .cornerRadius(10)


                    Button {
                        authStack = .register
                        nextNavigation.toggle()
                    } label: {
                        Text("Register")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundStyle(.black)
                    }
                    .frame(width: 160, height: 60)
                    .cornerRadius(10)
                }
            }
            .navigationDestination(isPresented: $nextNavigation) {
                switch authStack {
                case .login:
                    LoginView()
                case .register:
                    RegisterView()
                }
            }
        }

}
}

#Preview {
    ProfileView()
}
