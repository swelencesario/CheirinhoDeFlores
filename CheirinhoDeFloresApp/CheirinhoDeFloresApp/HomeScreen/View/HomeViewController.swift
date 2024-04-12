//
//  HomeViewController.swift
//  CheirinhoDeFloresApp
//
//  Created by Swelen Ebert on 08/04/24.
//

import UIKit

class HomeViewController: UIViewController {
    var flowers = [CellViewModel]()
    let homeView = HomeView()
    var homeViewModel: HomeViewModel
    
    init(homeViewModel: HomeViewModel) {
        self.homeViewModel = homeViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Presenteie com flores"
        homeView.collection.dataSource = self
        homeView.collection.delegate = self
        bindFlowers()
        homeViewModel.getFlowers()
    }
    
    override func loadView() {
        super.loadView()
        self.view = homeView
    }
    
    func bindFlowers() {
        homeViewModel.flowers.bind { [weak self] flowerList in
            guard let flowerList = flowerList else { return }
            self?.flowers = flowerList
            self?.homeView.collection.reloadData()
        }
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(self.flowers.count)
        return self.flowers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.identifier, for: indexPath) as? HomeCollectionViewCell
        
        cell?.setup(flower: flowers[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width / 2 - 24, height: 172)
    }
}
