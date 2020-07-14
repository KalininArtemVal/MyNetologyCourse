//
//  ViewController2.swift
//  TabBar
//
//  Created by Калинин Артем Валериевич on 13.07.2020.
//  Copyright © 2020 Калинин Артем Валериевич. All rights reserved.
//

import UIKit




class ViewController2: UIViewController {
    
    @IBOutlet weak var buttonToForthVC: UIButton!
    @IBOutlet weak var buttonToFifthVC: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
    }
    
    func setupButtons() {
        buttonToForthVC.layer.cornerRadius = 12
        buttonToFifthVC.layer.cornerRadius = 12
    }

    @IBAction  func unwindToMainViewController(segue: UIStoryboardSegue) {
        
    }
    
    
    @IBAction func toForthViewController(_ sender: Any) {
        
        let myViewController = ViewController4(nibName: "ViewController4", bundle: nil)
        self.present(myViewController, animated: true, completion: nil)
       
        shakeForth()
    }
    

    
    @IBAction func toFifthViewController(_ sender: Any) {
        let vc = ViewController5()
        addChild(vc)
        view.addSubview(vc.view)
        vc.didMove(toParent: self)
        shakeFifth()
        shakeForth()
    }
    
    
    func shakeFifth() {
        let animationShake = CAKeyframeAnimation()
        animationShake.keyPath = "position.x"
        animationShake.values = [0, 10, -10, 10, -5, 5, -5, 0 ]
        animationShake.keyTimes = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.8, 1]
        animationShake.duration = 0.4
        animationShake.isAdditive = true
        animationShake.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        self.buttonToFifthVC.layer.add(animationShake, forKey: "shake")
        self.buttonToFifthVC.layer.position = buttonToFifthVC.center
    }
    func shakeForth() {
        let animationShake = CAKeyframeAnimation()
        animationShake.keyPath = "position.x"
        animationShake.values = [0, 10, -10, 10, -5, 5, -5, 0 ]
        animationShake.keyTimes = [0, 0.125, 0.25, 0.375, 0.5, 0.625, 0.8, 1]
        animationShake.duration = 0.4
        animationShake.isAdditive = true
        animationShake.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        self.buttonToForthVC.layer.add(animationShake, forKey: "shake")
        self.buttonToForthVC.layer.position = buttonToForthVC.center
    }
    
}
