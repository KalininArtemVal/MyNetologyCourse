//
//  ViewController5.swift
//  TabBar
//
//  Created by Калинин Артем Валериевич on 14.07.2020.
//  Copyright © 2020 Калинин Артем Валериевич. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        setupButton()
        
    }
    
    
    func setupButton() {
        let button = UIButton(frame: CGRect(x: 115, y: 350, width: 150, height: 30))
        button.layer.cornerRadius = 12
        button.backgroundColor = .black
        button.setTitle("Remove View", for: .normal)
        button.addTarget(self, action: #selector(makeMeHappy), for: .touchUpInside)
        view.addSubview(button)
    }
    
  

    @objc func makeMeHappy() {
        let parent = ViewController2()
        willMove(toParent: parent)
        view.removeFromSuperview()
        removeFromParent()
    }
    
}
