//
//  ViewController4.swift
//  TabBar
//
//  Created by Калинин Артем Валериевич on 13.07.2020.
//  Copyright © 2020 Калинин Артем Валериевич. All rights reserved.
//

import UIKit




class ViewController4: UIViewController{
    
    @IBOutlet weak var imageLable: UIImageView!
    @IBOutlet weak var buttonLable: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImage()
        setupButton()
    }
    
    func setupButton() {
        buttonLable.layer.cornerRadius = 12
    }
    
    func setupImage() {
        let image = UIImage(named: "back")
        imageLable.image = image
        imageLable.contentMode = .scaleAspectFill
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
