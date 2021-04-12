//
//  ViewController.swift
//  UIButton & UILabel
//
//  Created by Никита Коголенок on 16.12.20.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Outlet
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet var actionButtons: [UIButton]!
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        label.textAlignment = .center
        label.font = label.font.withSize(35)
        
        button.isHidden = true
        
        for button in actionButtons {
            button.setTitleColor(.blue, for: .normal)
            button.backgroundColor = .green
        }
        
        button.setTitle("Clear", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        
    }
    // MARK: - Action
    @IBAction func pressedButton(_ sender: UIButton) {
        label.isHidden = false
        button.isHidden = false
        
        if sender.tag == 0 {
            label.text = "Hellow, World!"
            label.textColor = .red
        } else if sender.tag == 1 {
            label.text = "Hi, Friend!"
            label.textColor = .blue
        } else if sender.tag == 2 {
            label.isHidden = true
            button.isHidden = true
        }
    }
}

