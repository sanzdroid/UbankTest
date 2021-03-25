//
//  TransactionVC.swift
//  UbankTest
//
//  Created by sanzrush on 25/3/21.
//

import UIKit

class TransactionVC: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    var id : String = ""
    var availableBalance : String = ""
    var currentBalance : String = ""
    var productName : String = ""
    
    var transactions = [Transaction]()
    var sortedTransaction = [Transaction]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title = "Transactions"
        self.transactions = ApiService.loadTransactionJson(accountID: self.id)!
        self.sortedTransaction =  self.transactions.sorted(by: { $0.date > $1.date })
        print(self.sortedTransaction)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sortedTransaction.count+1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell: accountCell = tableView.dequeueReusableCell(withIdentifier: "accountCell") as! accountCell
            cell.lblAvailableBalance.text = self.availableBalance
            cell.lblAccountNo.text = self.id
            cell.lblAccountName.text = self.productName
            cell.lblCurrentBalance.text = self.currentBalance
            cell.bgView.layer.cornerRadius = 10
            return cell
       
        }else{
            let transactionDetail = self.sortedTransaction[indexPath.row-1]
            let cell: transactionCell = tableView.dequeueReusableCell(withIdentifier: "transactionCell") as! transactionCell
            let convertedDate = Util.convertStringToDate(stringDate: transactionDetail.date)
            cell.transactionDate.text = "\(convertedDate)"
            cell.amount.text = "$\(transactionDetail.amount)"
            cell.transactionDesc.text = transactionDetail.description
            cell.processingStatus.text = transactionDetail.processingStatus
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 150
        }else{
            return UITableView.automaticDimension
        }
    }
    
}
