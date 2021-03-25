//
//  AccountVC.swift
//  UbankTest
//
//  Created by sanzrush on 25/3/21.
//

import UIKit

class AccountVC: UIViewController,UITableViewDelegate, UITableViewDataSource {

    var accounts = [Account]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.accounts = ApiService.loadAccountJson()!
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
        print(self.accounts[indexPath.row].id)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150;
    }

}
