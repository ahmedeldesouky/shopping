//
//  ViewController.swift
//  shopping
//
//  Created by Ahmed Mohamed El-Desouky on 10/31/18.
//  Copyright © 2018 Ahmed Mohamed El-Desouky. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    public func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    @IBOutlet weak var Count: MyTextField!
    @IBOutlet weak var Ptice: MyTextField!
    @IBOutlet weak var totalLbl: UILabel!
    @IBOutlet weak var pundLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let CalBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        CalBtn.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        CalBtn.setTitle("Calculate", for: .normal)
        CalBtn.setTitleColor(#colorLiteral(red: 0.4352941176, green: 0.4431372549, blue: 0.4745098039, alpha: 1), for: .normal)
        CalBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        Count.inputAccessoryView = CalBtn
        Ptice.inputAccessoryView = CalBtn
        
        totalLbl.isHidden = true
        pundLbl.isHidden = true
    }

    @objc func calculate() {
        if let Count = Count.text, let Ptice = Ptice.text {
            if let amount = Double(Count), let price = Double(Ptice) {
                view.endEditing(true)
                pundLbl.isHidden = false
                totalLbl.isHidden = false
                totalLbl.text = "\(Amount.getTotal(forCount: amount, andPrice: price))"
            }
        }
        
    }

    @IBAction func clearBtn(_ sender: Any) {
        totalLbl.isHidden = true
        pundLbl.isHidden = true
        Count.text = ""
        Ptice.text = ""
    }
}

