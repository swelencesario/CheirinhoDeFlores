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
        let vm = LoginViewModel(coordinator: self)
        let vc = LoginViewController(viewModel: vm)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func goToRegisterScreen() {
        let vm = UserRegisterViewModel(coordinator: self)
        let vc = UserRegisterViewController(viewModel: vm)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToAddressScreen(userId: Int) {
        let vm = AddressViewModel(coordinator: self)
        let vc = AddressViewController(userId: userId, addressViewModel: vm)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func callAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Entendi",
                                      style: UIAlertAction.Style.default,
                                      handler: {(_: UIAlertAction!) in
            self.navigationController.dismiss(animated: true)
        }))
        navigationController.present(alert, animated: true)
    }
    
    func goToHomeScreen() {
        let vm = HomeViewModel(coordinator: self)
        let vc = HomeViewController(homeViewModel: vm)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToDetailsView() {
        let vc = DetailsViewController()
        navigationController.pushViewController(vc, animated: true)
    }
}
