//
//  TabBarViewModel.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 10.2.24.
//

import Foundation


final class TabBarViewModel: ObservableObject {

    @Published var selectedTab: Tabs = .profile

    func toggleSavedView() {
        selectedTab = .saved
    }

    func toggleProfileView() {
        selectedTab = .profile
    }
}
