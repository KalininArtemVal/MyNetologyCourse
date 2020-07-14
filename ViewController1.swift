//
//  ViewController1.swift
//  TabBar
//
//  Created by Калинин Артем Валериевич on 13.07.2020.
//  Copyright © 2020 Калинин Артем Валериевич. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var buttonLable: UIButton!
    
    let appearance = UITabBarItem.appearance()
    let attributes = [NSAttributedString.Key.font:UIFont(name: "American Typewriter", size: 10)]
    let normalTitleFont = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        appearance.setTitleTextAttributes(attributes as [NSAttributedString.Key : Any], for: .normal)
    }
    
    func setupButton() {
        buttonLable.layer.cornerRadius = 12
    }
    
    @IBAction func toViewController3(_ sender: Any) {
        performSegue(withIdentifier: "toView3", sender: nil)
        shake()
    }
    
    func shake() {
        let animationShake = CAKeyframeAnimation()
        animationShake.keyPath = "position.x"
        animationShake.values = [0, 10, -10, 10, -5, 5, -5, 0 ]
        animationShake.keyTimes = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.8, 1]
        animationShake.duration = 0.4
        animationShake.isAdditive = true
        animationShake.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        self.buttonLable.layer.add(animationShake, forKey: "shake")
        self.buttonLable.layer.position = buttonLable.center
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ViewController3 else { return }
        destination.text = textField.text
    }

}
