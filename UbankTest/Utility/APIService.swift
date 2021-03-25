//
//  Util.swift
//  UbankTest
//
//  Created by sanzrush on 25/3/21.
//

import Foundation
import UIKit

class ApiService{

    class func loadAccountJson() -> [Account]? {
        if let url = Bundle.main.url(forResource: "accounts", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(AccountData.self, from: data)
                return jsonData.accounts
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
    class func loadTransactionJson(accountID : String) -> [Transaction]? {
        if let url = Bundle.main.url(forResource: "transactions_\(accountID)", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(TransactionData.self, from: data)
                return jsonData.transactions
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}
