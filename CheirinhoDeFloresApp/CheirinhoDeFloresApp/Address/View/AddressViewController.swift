//
//  AddressViewController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 25/03/24.
//

import UIKit

class AddressViewController: UIViewController {
    var userId: Int?
    var coordinator: MainCoordinator?
    let addressView = AddressView()
    var addressViewModel: AddressViewModel
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(userId as Any)
        addressView.saveButton.addTarget(self, action: #selector(saveAddress), for: .touchUpInside)
    }
    
    override func loadView() {
        self.view = addressView
    }
    
    init(coordinator: MainCoordinator? = nil, userId: Int, addressViewModel: AddressViewModel) {
        self.coordinator = coordinator
        self.userId = userId
        self.addressViewModel = addressViewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func parseData() {
        addressViewModel.zipCode = addressView.zipCodeField.text
        addressViewModel.street = addressView.streetField.text
        addressViewModel.number = Int(addressView.houseNumberField.text ?? "")
        addressViewModel.complement = addressView.complementField.text
        addressViewModel.neighborhood = addressView.neighborhoodField.text
        addressViewModel.city = addressView.cityField.text
        addressViewModel.state = addressView.stateField.text
    }
    
    @objc func saveAddress() {
        parseData()
        if addressView.zipCodeField.text?.isEmpty == false &&
            addressView.streetField.text?.isEmpty == false &&
            addressView.houseNumberField.text?.isEmpty == false &&
            addressView.complementField.text?.isEmpty == false &&
            addressView.neighborhoodField.text?.isEmpty == false &&
            addressView.cityField.text?.isEmpty == false &&
            addressView.stateField.text?.isEmpty == false {
            addressViewModel.addAddress(id: userId ?? 0)
        }
    }
}
