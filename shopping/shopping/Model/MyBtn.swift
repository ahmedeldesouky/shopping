//
//  MyBtn.swift
//  shopping
//
//  Created by Ahmed Mohamed El-Desouky on 10/31/18.
//  Copyright © 2018 Ahmed Mohamed El-Desouky. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable
class MyBtn: UIButton {
    @IBInspectable var cornerR:CGFloat=0{didSet{self.layer.cornerRadius=cornerR}}
    
    @IBInspectable var borderW:CGFloat=0{didSet{self.layer.borderWidth=borderW}}
    
    @IBInspectable var borderC:UIColor=UIColor.clear{didSet{self.layer.borderColor=borderC.cgColor}}
}
