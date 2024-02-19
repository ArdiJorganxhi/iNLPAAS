//
//  Endpoint.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 18.2.24.
//

import Foundation


protocol Endpoint {
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var header: [String: String]? { get }
    var body: Data? { get }

}


extension Endpoint {

    var scheme: String {
        return "https"
    }

    var host: String {
        return "localhost:8080"
    }
}
