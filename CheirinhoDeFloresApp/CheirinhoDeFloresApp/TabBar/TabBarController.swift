//
//  TabBarController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 17/04/24.
//

import UIKit

class TabBarController: UITabBarController {
    
    var userId: Int
    
    init(userId: Int) {
        self.userId = userId
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor(named: "greatPinkColor")
        self.tabBar.unselectedItemTintColor = UIColor(named: "greatPinkColor")
    }
}
