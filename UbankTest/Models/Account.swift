//
//  Account.swift
//  UbankTest
//
//  Created by sanzrush on 25/3/21.
//

import Foundation

struct AccountData: Decodable {
    var accounts: [Account]
}
struct Account : Decodable {
    var availableBalance: String
    var currentBalance: String
    var id: String
    var productName: String
}
