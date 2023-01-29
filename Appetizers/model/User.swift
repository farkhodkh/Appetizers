//
//  User.swift
//  Appetizers
//
//  Created by farkhod on 29.01.2023.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var eMail = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
