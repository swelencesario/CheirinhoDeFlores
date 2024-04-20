//
//  TabBarController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 17/04/24.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    var tabControllers: [UIViewController]

    // MARK: - Initializer

    init(tabControllers: [UIViewController]) {
        self.tabControllers = tabControllers
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        self.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let tabOne = tabControllers[0]
        let tabOneBarItem = UITabBarItem(title: "",
                                         image: UIImage(systemName: "folder"),
                                         selectedImage: UIImage(named: ""))

        tabOne.tabBarItem = tabOneBarItem
        let tabTwo = tabControllers[1]
        let tabTwoBarItem2 = UITabBarItem(title: "",
                                          image: UIImage(systemName: "folder"),
                                          selectedImage: UIImage(named: ""))

        tabTwo.tabBarItem = tabTwoBarItem2

        let tab3 = tabControllers[2]
        let tabTwoBarItem3 = UITabBarItem(title: "",
                                          image: UIImage(systemName: "folder"),
                                          selectedImage: UIImage(named: ""))

        tab3.tabBarItem = tabTwoBarItem3
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected")
    }
}
