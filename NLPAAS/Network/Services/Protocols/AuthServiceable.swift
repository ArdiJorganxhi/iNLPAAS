//
//  AuthServiceable.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 18.2.24.
//

import Foundation

protocol AuthServiceable {
    func register(body: RegisterRequest) async -> Result<String, NetworkError>
    func login(body: LoginRequest) async -> Result<String, NetworkError>
}
