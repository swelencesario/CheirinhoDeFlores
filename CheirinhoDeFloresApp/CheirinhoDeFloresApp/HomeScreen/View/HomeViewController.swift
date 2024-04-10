//
//  HomeViewController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 08/04/24.
//

import UIKit

class HomeViewController: UIViewController {
    //mock para a célula
    var flowers = [UIImage(named: "flower"), UIImage(named: "flower"), UIImage(named: "flower"), UIImage(named: "flower"), UIImage(named: "flower"), UIImage(named: "flower"), UIImage(named: "flower"), UIImage(named: "flower"), UIImage(named: "flower"), UIImage(named: "flower"), UIImage(named: "flower")]
    
    let homeView = HomeView()
    let coordinator: MainCoordinator
    
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeView.collection.dataSource = self
        homeView.collection.delegate = self
        self.title = "Presenteie com flores"
    }
    
    override func loadView() {
        super.loadView()
        self.view = homeView
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return flowers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.identifier, for: indexPath) as? HomeCollectionViewCell
        //cell?.setup(searchResults[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width / 2 - 24, height: 128)
        }
}
