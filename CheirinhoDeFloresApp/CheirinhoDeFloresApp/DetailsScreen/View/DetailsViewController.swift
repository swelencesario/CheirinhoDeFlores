//
//  DetailsViewController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/04/24.
//

import UIKit

class DetailsViewController: UIViewController {
    let detailsView = DetailsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Rosas"
        detailsView.descriptionLabel.text = "Lindas rosas organizadas em um bouquet super cheirosinho"
        detailsView.priceLabel.text = "R$50,00"
        
    }
    
    override func loadView() {
        self.view = detailsView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        detailsView.stepper.addTarget(self, action: #selector(updateStepper), for: .valueChanged)
    }
    
    @objc func updateStepper(_ sender: UIStepper) {
        let valueInt = Int(sender.value)
        detailsView.quantityLabel.text = String(valueInt)
    }
}
