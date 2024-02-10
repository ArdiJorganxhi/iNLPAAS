//
//  NetworkError.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 7.2.24.
//

import Foundation


enum NetworkError: Error {

    case invalidURL
    case noData
    case decodingError
    case custom(message: String)
}
