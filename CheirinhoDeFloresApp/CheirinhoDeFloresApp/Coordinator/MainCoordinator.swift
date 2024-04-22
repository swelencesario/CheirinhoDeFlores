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
    
    func callTabBar() {
        let homeViewModel = HomeViewModel(coordinator: self)
        let homeViewController = HomeViewController(homeViewModel: homeViewModel)
        homeViewController.title = ""
        homeViewController.tabBarItem = UITabBarItem(title: "Início", image: UIImage(systemName: "house"), tag: 0)
        
        let cartViewController = CartViewController()
        cartViewController.tabBarItem = UITabBarItem(title: "Carrinho", image: UIImage(systemName: "cart.fill"), tag: 1)
        
        let accountViewController = AccountViewController()
        accountViewController.tabBarItem = UITabBarItem(title: "Conta", image: UIImage(systemName: "person.fill"), tag: 2)
        
        
        let tabBar = TabBarController()
        tabBar.viewControllers = [homeViewController, cartViewController, accountViewController]
        navigationController.pushViewController(tabBar, animated: true)
    }
    
    func goToHomeScreen() {
        let vm = HomeViewModel(coordinator: self)
        let vc = HomeViewController(homeViewModel: vm)
        vc.title = "Presenteie com flores"
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToDetailsScreen(flowerId: Int) {
        let vm = DetailsViewModel(coordinator: self)
        let vc = DetailsViewController(flowerId: flowerId, detailsViewModel: vm)
        navigationController.pushViewController(vc, animated: true)
    }
}
