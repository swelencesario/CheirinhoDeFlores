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
        let vc = LoginViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func goToRegisterScreen() {
        let vc = UserRegisterViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func goToAddressScreen() {
        let vc = AddressViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
