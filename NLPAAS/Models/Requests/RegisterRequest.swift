//
//  RegisterRequest.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 10.2.24.
//

import Foundation


struct RegisterRequest: Codable {

    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var password: String = ""
}
