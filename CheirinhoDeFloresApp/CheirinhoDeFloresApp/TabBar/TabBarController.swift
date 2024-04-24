//
//  TabBarController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 17/04/24.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor(named: "greatPinkColor")
        self.tabBar.unselectedItemTintColor = UIColor(named: "greatPinkColor")
    }
}
