////
////  DateViewController.swift
////  UIPickerView
////
////  Created by Duxxless on 19.12.2021.
////
//
//import UIKit
//
//class DateViewController: UIViewController {
//
//    @IBOutlet weak var topTF: UITextField!
//    @IBOutlet weak var bottonTF: UITextField!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//
//    func registerForKeyboardNotif() {
//
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
//
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
//    }
//
//
//    func keyboardWillShow(_ notif: NSNotification) {
//
//        let userInfo = notif.userInfo
//        let kbFrameSize = userInfo[UIKeyboardFrameEndUserInfoKey]
//    }
//
//    @IBAction func button(_ sender: UIButton) {
//    }
//
//}
