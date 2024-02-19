//
//  AuthEndpoint.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 18.2.24.
//

import Foundation


enum AuthEndpoint {
    case register(body: RegisterRequest)
    case login(body: LoginRequest)
}

extension AuthEndpoint: Endpoint {
    var path: String {
        switch self {
        case .register:
            return "/api/auth/register"
        case .login:
            return "/api/auth/login"
        }

    }

    var method: HTTPMethod {
        switch self {
        case .register:
            return .post
        case .login:
            return .post
        }
    }

    var header: [String: String]? {

        switch self {
        case .register:
            return [
                "Content-Type": "application/json"
            ]
        case .login:
            return [
                "Content-Type": "application/json"
            ]
        }
    }

    var body: Data? {

        switch self {
        case .register(let body):
            return try? JSONSerialization.data(withJSONObject: body)
        case .login(let body):
            return try? JSONSerialization.data(withJSONObject: body)
        }
    }
}
