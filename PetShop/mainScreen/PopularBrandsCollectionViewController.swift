//
//  PopularBrandsCollectionViewController.swift
//  PetShop
//
//  Created by Солодкий Артур Жанович on 5.06.22.
//

import UIKit

final class ContainerView: UIView {
    
    let collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumInteritemSpacing = 8
        flowLayout.sectionInset = .init(top: 0, left: 16, bottom: 0, right: 8)
        flowLayout.itemSize = CGSize(width: 91, height: 50)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    } ()
    
}

class PopularBrandsCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let customView = ContainerView()
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.collectionView.register(PopularBrandsCollectionViewCell.self, forCellWithReuseIdentifier: "PopularBrandsCollectionViewCell")
        
        customView.collectionView.delegate = self
        customView.collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularBrandsCollectionViewCell", for: indexPath) as! PopularBrandsCollectionViewCell
        if indexPath.row == 0 {
        cell.imageView.image = UIImage(named: "brandColletionOne")
        }
        
        if indexPath.row == 1 {
        cell.imageView.image = UIImage(named: "brandColletionTwo")
        }
        
        if indexPath.row == 2 {
        cell.imageView.image = UIImage(named: "brandColletionThree")
        }
        
        if indexPath.row == 3 {
        cell.imageView.image = UIImage(named: "brandColletionFour")
        }

        return cell
    }
    
    

}
