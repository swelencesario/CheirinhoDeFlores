//
//  DetailsViewController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 12/04/24.
//

import UIKit

class DetailsViewController: UIViewController {
    var flowerId: Int
    var flowerName: String?
    var flowerPrice: String?
    var flowerImage: String?

    let detailsView = DetailsView()
    var detailsViewModel: DetailsViewModel
    
    init(flowerId: Int, detailsViewModel: DetailsViewModel) {
        self.flowerId = flowerId
        self.detailsViewModel = detailsViewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        detailsViewModel.getFlowerById(flowerId: flowerId)
        setupViewValues()
        detailsView.cartButton.addTarget(self, action: #selector(addToCart), for: .touchUpInside)
    }
    
    override func loadView() {
        self.view = detailsView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        detailsView.stepper.addTarget(self, action: #selector(updateStepper), for: .valueChanged)
    }
    
    @objc func addToCart() {
        self.callErrorAlert(title: "Produto adicionado com sucesso", message: "")
    }
    
    func setupViewValues() {
        detailsViewModel.flowerName.bind { [weak self] name in
            guard let name = name else { return }
            self?.flowerName = name
            
            self?.title = name.capitalized
            self?.detailsView.descriptionLabel.text = "Lindas \(String(describing: name)) organizadas em um bouquet super cheirosinho"
        }
        
        detailsViewModel.flowerPrice.bind { [weak self] price in
            guard let price = price else { return }
            self?.detailsView.priceLabel.text = "R$ \(price)"
        }
        
        detailsViewModel.flowerUrl.bind { [weak self] image in
            guard let image = image else { return }
            self?.detailsView.flowerImage.loadImageFromURL(urlString: image)
        }
    }
    
    @objc func updateStepper(_ sender: UIStepper) {
        let valueInt = Int(sender.value)
        detailsView.quantityLabel.text = String(valueInt)
    }
}