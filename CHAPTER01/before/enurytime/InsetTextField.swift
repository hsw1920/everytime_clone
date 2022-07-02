//
//  insetTextField.swift
//  enurytime
//
//  Created by 홍승완 on 2022/07/02.
//

import Foundation
import UIKit

class InsetTextField: UITextField {
    var insetX: CGFloat = 0 {
        didSet{
            layoutIfNeeded()
        }
    }
    
    var insetY: CGFloat = 0 {
        didSet{
            layoutIfNeeded()
        }
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: insetY)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: insetX, dy: insetY)
    }
}
