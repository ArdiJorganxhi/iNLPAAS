//
//  ContentView.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 7.2.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.accentColor
                .ignoresSafeArea()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.white)
                Text("Hello, world!")
                    .foregroundStyle(.white)

            }
            .padding()

        }
    }

}

#Preview {
    ContentView()
}
