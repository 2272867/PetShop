//
//  CollectionViewController.swift
//  PetShop
//
//  Created by Солодкий Артур Жанович on 6.06.22.
//

import UIKit

private let reuseIdentifier = "Cell"

//final class ContainerView2: UIView {
//    let collectionView: UICollectionView = {
//        let flowLayout = UICollectionViewFlowLayout()
//        flowLayout.scrollDirection = .horizontal
//        flowLayout.minimumInteritemSpacing = 8
//        flowLayout.sectionInset = .init(top: 0, left: 16, bottom: 0, right: 8)
//        flowLayout.itemSize = CGSize(width: 91, height: 50)
//        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
//        return collectionView
//    } ()
//
//}

class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "PopularBrandsCollectionViewCell")

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 4
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
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

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
    

}
