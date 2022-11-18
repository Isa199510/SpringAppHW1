//
//  ViewController.swift
//  SpringAppHW1
//
//  Created by Иса on 18.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var springeView: SpringView!
    @IBOutlet var resultLabel: UILabel!
    
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springeView.layer.cornerRadius = 10
        resultLabel.text = animation.description
        
    }

    @IBAction func runPressedButton(_ sender: UIButton) {
        resultLabel.text = animation.description
        
        springeView.animation = animation.name
        springeView.curve = animation.curve
        springeView.force = animation.force
        springeView.duration = animation.duration
        springeView.delay = animation.delay
        springeView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)

    }
    
}

