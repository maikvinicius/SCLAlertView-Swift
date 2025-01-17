//
//  PaddingLabel.swift
//  SCLAlertView
//
//  Created by Maik Vinicius on 07/08/19.
//  Copyright © 2019 Alexey Poimtsev. All rights reserved.
//

import UIKit

@IBDesignable public class PaddingLabel: UILabel {
    
    @IBInspectable public var topInset: CGFloat = 5.0
    @IBInspectable public var bottomInset: CGFloat = 5.0
    @IBInspectable public var leftInset: CGFloat = 7.0
    @IBInspectable public var rightInset: CGFloat = 7.0
    
    override public func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets.init(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: rect.inset(by: insets))
    }
    
    override public var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + leftInset + rightInset,
                      height: size.height + topInset + bottomInset)
    }
}
