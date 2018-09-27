//
//  ViewController.swift
//  StackViewTraining
//
//  Created by Tandem on 19/09/2018.
//  Copyright © 2018 Tandem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackview: UIStackView!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn1.layer.borderColor = UIColor.black.cgColor
        btn2.layer.borderColor = UIColor.black.cgColor
        btn3.layer.borderColor = UIColor.black.cgColor
        
        btn1.layer.borderWidth = 1
        btn2.layer.borderWidth = 1
        btn3.layer.borderWidth = 1
        
        btn1.layer.cornerRadius = 5
        btn2.layer.cornerRadius = 5
        btn3.layer.cornerRadius = 5
        
        btn1.setTitle("Button 1", for: .normal)
        btn2.setTitle("Button 2", for: .normal)
        btn3.setTitle("Button 3", for: .normal)
        
        btn1.addTarget(self, action: #selector(btn1Clicked(_:)), for: .touchUpInside)
        btn2.addTarget(self, action: #selector(btn2Clicked(_:)), for: .touchUpInside)
        btn3.addTarget(self, action: #selector(btn3Clicked(_:)), for: .touchUpInside)
        
    }
    
    @objc func btn1Clicked(_ sender: UIButton){
        sender.isHidden = true
        print("stack view width : \(stackview.frame.width)")
    }
    
    @objc func btn2Clicked(_ sender: UIButton){
        sender.isHidden = true
        print("stack view width : \(stackview.frame.width)")
    }
    
    @objc func btn3Clicked(_ sender: UIButton){
        btn1.isHidden = false
        btn2.isHidden = false
        print("stack view width : \(stackview.frame.width)")
    }



}

