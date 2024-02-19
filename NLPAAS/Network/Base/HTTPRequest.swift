//
//  HTTPRequest.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 18.2.24.
//

import Foundation


protocol HTTPRequest {
    func sendRequest<T: Decodable>(endpoint: Endpoint, responseModel: T.Type) async -> Result<T, NetworkError>
}

extension HTTPRequest {

    func sendRequest<T: Decodable>(endpoint: Endpoint, responseModel: T.Type) async -> Result<T, NetworkError> {
        var urlComponents = URLComponents()
        urlComponents.scheme = endpoint.scheme
        urlComponents.host = endpoint.host
        urlComponents.path = endpoint.path

        guard let url = urlComponents.url else {
            return .failure(.invalidURL)
        }

        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue
        request.allHTTPHeaderFields = endpoint.header

        if let body = endpoint.body {
            request.httpBody = try? JSONSerialization.data(withJSONObject: body)
        }

        do {
            let (data, response) = try await URLSession.shared.data(for: request, delegate: nil)
            guard let response = response as? HTTPURLResponse else {
                return .failure(.noData)
            }

            switch response.statusCode {
            case 200...299:
                guard let decodedResponse = try? JSONDecoder().decode(responseModel, from: data) else {
                    return .failure(.decodingError)
                }
                return .success(decodedResponse)
            case 401:
                return .failure(NetworkError.custom(message: "Unauthorized"))
            default:
                return .failure(NetworkError.custom(message: "Unexpected error"))
            }
        } catch {
            return .failure(NetworkError.custom(message: "Unknown error"))
        }
    }
}
