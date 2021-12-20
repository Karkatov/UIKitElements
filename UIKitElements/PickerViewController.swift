//
//  PickerViewController.swift
//  UIKitElements
//
//  Created by Duxxless on 20.12.2021.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    

    let textField = UITextField()
    let picker = UIPickerView()
    
    let name = ["Sergey", "Alexander", "Nikolay" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        textField.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1)
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter name"
        textField.frame = CGRect(x: 20, y: 100, width: 385, height: 30)
        view.addSubview(textField)
        
        picker.delegate = self
        picker.dataSource = self
        textField.inputView = picker
        
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let buttonToolbar = UIBarButtonItem(title: "Готово", style: .plain, target: nil, action: #selector(endEdit))
        
        let space = UIBarButtonItem(systemItem: .flexibleSpace, primaryAction: nil, menu: .none)
        
        toolbar.setItems([space ,buttonToolbar], animated: true)
     
        textField.inputAccessoryView = toolbar
    }
    
    @objc func endEdit() {
        
        if textField.text == "" {
            textField.text = name[0]
        }
        view.endEditing(true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
        }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return name.count
        }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return name[row]
    }
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
        }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textField.text = name[row]
    }
    
}
