//
//  SwichViewController.swift
//  UIPickerView
//
//  Created by Duxxless on 19.12.2021.
//

import UIKit

class SwichViewController: UIViewController {
    
    @IBOutlet weak var switcher: UISwitch!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switcher.addTarget(self, action: #selector(isOn(swicth:)), for: .valueChanged)
    }
    
    @objc func isOn(swicth: UISwitch) {
        if swicth.isOn {
            label.text = "Вкл"
        } else {
            label.text = "Выкл"
        }
    }
    
}
