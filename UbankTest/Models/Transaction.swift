//
//  Transaction.swift
//  UbankTest
//
//  Created by sanzrush on 25/3/21.
//

import Foundation

struct TransactionData: Decodable {
    var transactions: [Transaction]
}
struct Transaction : Decodable {
    var date: String
    var description: String
    var amount: String
    var runningBalance: String?
    var processingStatus: String
}

