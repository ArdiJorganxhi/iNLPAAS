//
//  MainView.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 7.2.24.
//

import SwiftUI

struct MainView: View {

    @ObservedObject var tabBarViewModel = TabBarViewModel()

    var body: some View {
        VStack {
            TabView(selection: $tabBarViewModel.selectedTab) {
                
                SavedView()
                    .tag(Tabs.saved)

                ProfileView()
                    .tag(Tabs.profile)

            }
            Spacer()
            BottomNavigationBar(tabBarViewModel: tabBarViewModel)
        }
    }
}


#Preview {
    MainView()
}
