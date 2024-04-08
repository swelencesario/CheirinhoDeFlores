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
        let vm = UserRegisterViewModel(coordinator: self)
        let vc = UserRegisterViewController(viewModel: vm)
        navigationController.pushViewController(vc, animated: true)
    }

    func goToAddressScreen(userId: Int) {
        let vc = AddressViewController(userId: userId)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
