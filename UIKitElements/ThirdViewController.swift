//
//  ThirdViewController.swift
//  UIPickerView
//
//  Created by Duxxless on 19.12.2021.
//

import UIKit

class ThirdViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var textField = UITextField()
    
    let array = ["1", "2", "3", "4", "5"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        textField.frame = CGRect(x: 0, y: 0, width: 390, height: 30)
        textField.center = view.center
        view.addSubview(textField)
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
        
        
        let toolbarpicker = UIToolbar()
        toolbarpicker.sizeToFit()
        
        let buttonDone = UIBarButtonItem(title: "Готово", style: .plain, target: .none, action: #selector(dissmisKeyboard))
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolbarpicker.setItems([space, buttonDone], animated: true)
        
        
        let picker = UIPickerView()
        textField.inputView = picker
        picker.delegate = self
        picker.dataSource = self
        textField.inputAccessoryView = toolbarpicker
    }
    
    
    @objc func dissmisKeyboard() {
        if textField.text == "" {
            textField.text = array[0]
        }
        view.endEditing(true)
            }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "row - \(row)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textField.text = array[row]
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

