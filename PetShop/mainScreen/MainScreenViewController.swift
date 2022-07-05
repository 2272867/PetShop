//
//  MainScreenViewController.swift
//  PetShop
//
//  Created by Солодкий Артур Жанович on 4.06.22.
//

import UIKit

final class MainScreenViewController: UIViewController {
    
    override func loadView() {
        view = MainScreenUIView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = MainScreenUIView()
        view.backgroundColor = .white

    }

}
