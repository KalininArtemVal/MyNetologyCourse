//
//  ViewController3.swift
//  TabBar
//
//  Created by Калинин Артем Валериевич on 13.07.2020.
//  Copyright © 2020 Калинин Артем Валериевич. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    
    @IBOutlet weak var toSecondViewLable: UIButton!
    
    @IBOutlet weak var textLableOnViewController3: UILabel!
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLableOnViewController3.text = text
        setupButton()
    }
    
    func setupButton() {
        toSecondViewLable.layer.cornerRadius = 8
    }
    
    
    @IBAction func VoSecondViewController(_ sender: Any) {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
}
