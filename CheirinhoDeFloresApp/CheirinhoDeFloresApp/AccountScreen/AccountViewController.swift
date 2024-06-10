//
//  AccountViewController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 22/04/24.
//

import UIKit

class AccountViewController: UIViewController {

    let accountView = AccountView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func loadView() {
        self.view = accountView
    }
}
