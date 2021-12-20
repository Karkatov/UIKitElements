//
//  SecondViewController.swift
//  UIPickerView
//
//  Created by Duxxless Macbook on 13.12.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    let datePicker = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.center = view.center
        view.addSubview(datePicker)
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.maximumDate = datePicker.date

        datePicker.addTarget(self, action: #selector(datepickerChange(paramDatePicker:)), for: .valueChanged)
        
        let loc = Locale.init(identifier: "uk")
        var calendar = Calendar.current
        calendar.locale = loc
        self.datePicker.calendar = calendar
        
        datePicker.countDownDuration = 2 * 60
        
        
        // Do any additional setup after loading the view.
    }
    
    //Displaying all changes.
   @objc func datepickerChange(paramDatePicker: UIDatePicker) {
            
            if paramDatePicker.isEqual(self.datePicker) {
                print("dateChange : = ", paramDatePicker.date)
            
    }

}
}
