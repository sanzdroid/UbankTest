//
//  Util.swift
//  UbankTest
//
//  Created by sanzrush on 25/3/21.
//

import Foundation

class Util{
    class func convertStringToDate(stringDate: String) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
        let date1 = formatter.date(from: stringDate)
        formatter.dateFormat = "dd-MMM-YYYY HH:mm"
        let stringDate = formatter.string(from: date1!)
        return stringDate
    }
}
