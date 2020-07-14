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
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        let centerXConstraint = NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let centerYConstraint = NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        NSLayoutConstraint.activate([centerXConstraint, centerYConstraint])
        
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
