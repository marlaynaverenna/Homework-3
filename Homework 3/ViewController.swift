//
//  ViewController.swift
//  Homework 3
//
//  Created by Marlayna Verenna on 2/18/20.
//  Copyright © 2020 Marlayna Verenna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tinkerbellView: UIImageView!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var castleView: UIImageView!
    @IBOutlet weak var toggleInfo: UIButton!
    @IBOutlet weak var hiddenInfo: UIButton!
    
    @IBAction func toggleButton(_ sender: Any) {
        
        if (tinkerbellView.isAnimating)
        {
            tinkerbellView.stopAnimating()
        } else {
            tinkerbellView.startAnimating()
        }
        
    }
    
    @IBAction func setSpeed(_ sender: Any) {
        tinkerbellView.animationDuration=TimeInterval(3.0-speedSlider.value)
        tinkerbellView.startAnimating()
    }
    
    @IBAction func hiddenButton(_ sender: Any) {
        if castleView.isHidden == true {
            castleView.isHidden = false
        } else {
            castleView.isHidden = true
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let flyAnimation: [UIImage] = [
               UIImage(named: "frame-1")!,
               UIImage(named: "frame-2")!,
               UIImage(named: "frame-3")!,
               UIImage(named: "frame-4")!,
               UIImage(named: "frame-5")!,
               UIImage(named: "frame-6")!,
               UIImage(named: "frame-7")!,
               UIImage(named: "frame-8")!,
               UIImage(named: "frame-9")!,
               UIImage(named: "frame-10")!,
               UIImage(named: "frame-11")!,
        ]
        
        tinkerbellView.animationImages=flyAnimation
        tinkerbellView.animationDuration=1.0
        
    }
        
}

