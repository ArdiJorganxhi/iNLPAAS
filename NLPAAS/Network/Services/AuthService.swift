//
//  AuthService.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 18.2.24.
//

import Foundation


struct AuthService: HTTPRequest, AuthServiceable {
    func login(body: LoginRequest) async -> Result<String, NetworkError> {
        return await sendRequest(endpoint: AuthEndpoint.login(body: body), responseModel: String.self)
    }
    

    func register(body: RegisterRequest) async -> Result<String, NetworkError> {
        return await sendRequest(endpoint: AuthEndpoint.register(body: body), responseModel: String.self)
    }
}
