//
//  AddressViewController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 25/03/24.
//

import UIKit

class AddressViewController: UIViewController {
    var coordinator: MainCoordinator?
    let addressViewModel = AddressViewModel()
    var userId: Int?
    
    @IBOutlet weak var zipCodeOutlet: UITextField!
    @IBOutlet weak var streetOutlet: UITextField!
    @IBOutlet weak var houseNumberOutlet: UITextField!
    @IBOutlet weak var complementOutlet: UITextField!
    @IBOutlet weak var neighborhoodOutlet: UITextField!
    @IBOutlet weak var cityOutlet: UITextField!
    @IBOutlet weak var stateOutlet: UITextField!
    
    @IBAction func searchZipCode(_ sender: Any) {
        
    }
    
    @IBAction func confirmButton(_ sender: Any) {
        saveAddress()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func parseData() {
        addressViewModel.userId = self.userId
        print(addressViewModel.userId as Any)
        print(self.userId as Any)
        addressViewModel.zipCode = zipCodeOutlet.text
        addressViewModel.street = streetOutlet.text
        addressViewModel.number = Int(houseNumberOutlet.text ?? "")
        addressViewModel.complement = complementOutlet.text
        addressViewModel.neighborhood = neighborhoodOutlet.text
        addressViewModel.city = cityOutlet.text
        addressViewModel.state = stateOutlet.text
    }
    
    func saveAddress() {
        parseData()
        if zipCodeOutlet.text?.isEmpty == false &&
            streetOutlet.text?.isEmpty == false &&
            houseNumberOutlet.text?.isEmpty == false &&
            complementOutlet.text?.isEmpty == false &&
            neighborhoodOutlet.text?.isEmpty == false &&
            cityOutlet.text?.isEmpty == false &&
            stateOutlet.text?.isEmpty == false{
            addressViewModel.addAddress() // arrumar o userID, que deve vir da user view controller.
        }
    }
}
