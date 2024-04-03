//
//  MainCoordinator.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 01/04/24.
//

import UIKit

public class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginViewController")
        //homeVC.modalPresentationStyle = .overFullScreen
        //homeVC.modalTransitionStyle = .crossDissolve
        
        let vc = LoginViewController()
        vc.coordinator = self
        navigationController.pushViewController(loginVC, animated: false)
    }
    
    func buySubscription() {
//        let vc = BuyViewController()
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: true)
    }

    func createAccount() {
//        let vc = CreateAccountViewController()
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: true)
    }
}
