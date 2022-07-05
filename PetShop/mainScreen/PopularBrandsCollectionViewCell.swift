//
//  PopularBrandsCollectionViewCell.swift
//  PetShop
//
//  Created by Солодкий Артур Жанович on 6.06.22.
//

import UIKit

final class PopularBrandsCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "PopularBrandsCollectionViewCell"
    
    private(set) var imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "brandColletionOne"))
        imageView.backgroundColor = .red
        return imageView
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
            
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
