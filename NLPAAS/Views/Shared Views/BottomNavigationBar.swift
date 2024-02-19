//
//  BottomNavigationBar.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 7.2.24.
//

import SwiftUI

enum Tabs: Int, Hashable {
    case saved = 0
    case profile = 1
}


struct BottomNavigationBar: View {

    @ObservedObject var tabBarViewModel: TabBarViewModel
    @StateObject var sheetManager = SheetManager()

    var body: some View {
        HStack {
            
            Button(action: {tabBarViewModel.toggleSavedView()}, label: {

                TabBarButton(buttonText: "Saved", imageName: "bookmark", isActive: tabBarViewModel.selectedTab == .saved)
            }
            ).tint(.gray)

            Button(action: {sheetManager.toggleSheet()}, label: {
                VStack(alignment: .center, spacing: 4) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                    Text("New Task")
                }
            }
            ).tint(.blue)
                .sheet(isPresented: $sheetManager.showSheet, content: {
                    NewTaskSheetView()
                        .presentationCornerRadius(40)
                        .presentationDragIndicator(.visible)
                        .presentationDetents([.fraction(0.5)])
                })



            Button(action: {tabBarViewModel.toggleProfileView()}, label: {
                TabBarButton(buttonText: "Profile", imageName: "person", isActive: tabBarViewModel.selectedTab == .profile)
            }
            ).tint(.gray)
        }
        .frame(height: 82)
    }
}


