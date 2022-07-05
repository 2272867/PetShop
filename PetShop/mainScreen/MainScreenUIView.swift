//
//  MainScreenUIVIew.swift
//  PetShop
//
//  Created by Солодкий Артур Жанович on 4.06.22.
//

import UIKit

class MainScreenUIView: UIView {
    
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
    
    private let headerLabel = UILabel()
    private let petShopImage = UIImageView(image: UIImage(named: "petShopLogo"))
    private let finderImage = UIImageView(image: UIImage(named: "findImage"))
    private let bookmarkImage = UIImageView(image: UIImage(named: "bookmarkImage"))
    private let basketImage = UIImageView(image: UIImage(named: "ShoppingCart"))
    private let profileImage = UIImageView(image: UIImage(named: "profileImage"))
    private let headerBanner = UIImageView(image: UIImage(named: "petShopBanner"))
   // private let popularBrandView = UICollectionView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews()
        configureItems()
        
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubViews() {
        [petShopImage, finderImage, bookmarkImage, basketImage, profileImage, headerBanner, headerBanner].forEach { $0.translatesAutoresizingMaskIntoConstraints = false
            $0.isUserInteractionEnabled = true
        }
        
        
        addSubview(headerLabel)
        headerLabel.addSubview(petShopImage)
        headerLabel.addSubview(finderImage)
        headerLabel.addSubview(bookmarkImage)
        headerLabel.addSubview(basketImage)
        headerLabel.addSubview(profileImage)
        addSubview(headerBanner)
    //    addSubview(popularBrandView)
    }
    
    private func configureItems() {
        configureHeaderLabel()
        configurePetShopImage()
        configureProfileImage()
        configurebasketImage()
        configurebookmarkImage()
        configurefinderImage()
        configureHeaderBanner()
        cofigureBrandCollectionView()
    }
    
    private func configureHeaderLabel() {
        NSLayoutConstraint(item: headerLabel, attribute: .top, relatedBy: .equal, toItem: self, attribute: .topMargin, multiplier: 1, constant: 0).isActive = true
        headerLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: .zero).isActive = true
        headerLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: .zero).isActive = true
        headerLabel.heightAnchor.constraint(equalToConstant: 56).isActive = true
        headerLabel.backgroundColor = .yellow
    }
    
    private func configurePetShopImage() {
        NSLayoutConstraint(item: petShopImage, attribute: .top, relatedBy: .equal, toItem: headerLabel, attribute: .top, multiplier: 1, constant: 8).isActive = true
        NSLayoutConstraint(item: petShopImage, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 16).isActive = true
        petShopImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        petShopImage.widthAnchor.constraint(equalToConstant: 68).isActive = true
    }
    
    private func configureProfileImage() {
        NSLayoutConstraint(item: profileImage, attribute: .top, relatedBy: .equal, toItem: headerLabel, attribute: .top, multiplier: 1, constant: 19).isActive = true
        NSLayoutConstraint(item: profileImage, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: -19).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 24).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 24).isActive = true
    }
    private func configurebasketImage() {
        NSLayoutConstraint(item: basketImage, attribute: .top, relatedBy: .equal, toItem: headerLabel, attribute: .top, multiplier: 1, constant: 19).isActive = true
        NSLayoutConstraint(item: basketImage, attribute: .trailing, relatedBy: .equal, toItem: profileImage, attribute: .leading, multiplier: 1, constant: -24).isActive = true
        basketImage.heightAnchor.constraint(equalToConstant: 24).isActive = true
        basketImage.widthAnchor.constraint(equalToConstant: 24).isActive = true
    }
    private func configurebookmarkImage() {
        NSLayoutConstraint(item: bookmarkImage, attribute: .top, relatedBy: .equal, toItem: headerLabel, attribute: .top, multiplier: 1, constant: 19).isActive = true
        NSLayoutConstraint(item: bookmarkImage, attribute: .trailing, relatedBy: .equal, toItem: basketImage, attribute: .leading, multiplier: 1, constant: -24).isActive = true
        bookmarkImage.heightAnchor.constraint(equalToConstant: 24).isActive = true
        bookmarkImage.widthAnchor.constraint(equalToConstant: 24).isActive = true
    }
    private func configurefinderImage() {
        NSLayoutConstraint(item: finderImage, attribute: .top, relatedBy: .equal, toItem: headerLabel, attribute: .top, multiplier: 1, constant: 19).isActive = true
        NSLayoutConstraint(item: finderImage, attribute: .trailing, relatedBy: .equal, toItem: bookmarkImage, attribute: .leading, multiplier: 1, constant: -24).isActive = true
        finderImage.heightAnchor.constraint(equalToConstant: 24).isActive = true
        finderImage.widthAnchor.constraint(equalToConstant: 24).isActive = true
    }
    private func configureHeaderBanner() {
        headerBanner.topAnchor.constraint(equalTo: headerLabel.bottomAnchor).isActive = true
        headerBanner.heightAnchor.constraint(equalToConstant: 144).isActive = true
        headerBanner.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
    }
    private func cofigureBrandCollectionView() {
   //     popularBrandView.topAnchor.constraint(equalTo: headerBanner.bottomAnchor).isActive = true
//        popula
    }

}
