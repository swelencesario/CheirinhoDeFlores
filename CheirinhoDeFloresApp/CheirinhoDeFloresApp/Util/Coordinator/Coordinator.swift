//
//  Coordinator.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 01/04/24.
//
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
