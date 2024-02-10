//
//  SheetManager.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 10.2.24.
//

import Foundation


final class SheetManager: ObservableObject {

    @Published var showSheet: Bool = false

    func toggleSheet() {
        showSheet = true
    }

    func closeSheet() {
        showSheet = false
    }
}
