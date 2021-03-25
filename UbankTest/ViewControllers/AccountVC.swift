//
//  AccountVC.swift
//  UbankTest
//
//  Created by sanzrush on 25/3/21.
//

import UIKit

class AccountVC: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var accTableView: UITableView!
    var accounts = [Account]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Accounts"
        self.accounts = ApiService.loadAccountJson()!
        accTableView.tableFooterView = UIView()
    }
    
//MARK:- UITableView Delegates
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.accounts.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : accountCell? = tableView.dequeueReusableCell(withIdentifier: "accountCell") as? accountCell
        let accountDetail = self.accounts[indexPath.row]
        cell?.lblAccountName.text = accountDetail.productName
        cell?.lblAccountNo.text = accountDetail.id
        cell?.lblAvailableBalance.text = accountDetail.availableBalance
        cell?.lblCurrentBalance.text = accountDetail.currentBalance
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let accountDetail = self.accounts[indexPath.row]
        let transcationVC = self.storyboard?.instantiateViewController(identifier: "transactionVC") as! TransactionVC
        transcationVC.id = accountDetail.id
        transcationVC.availableBalance = accountDetail.availableBalance
        transcationVC.currentBalance = accountDetail.currentBalance
        transcationVC.productName = accountDetail.productName
        self.navigationController?.pushViewController(transcationVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150;
    }

}
