//
//  IBDesignable+CAGradientLayer.swift
//  Vary for Traits
//
//  Created by Archisman Banerjee on 11/03/19.
//  Copyright © 2019 Archisman Banerjee. All rights reserved.
//

import UIKit

@IBDesignable
class Gradient: UIView
{
    @IBInspectable var firstColor:UIColor = UIColor.clear
    @IBInspectable var secondColor:UIColor = UIColor.clear
    @IBInspectable var startPoint:CGPoint = CGPoint(x: 0.0, y: 1.0)
    @IBInspectable var endPoint:CGPoint = CGPoint(x: 1.0, y:0.0)
    
    var gradientLayer: CAGradientLayer = CAGradientLayer()
    
    override func draw(_ rect: CGRect)
    {
        super.draw(rect)
        
        gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor]
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        
        // gradientLayer.frame = self.layer.bounds
        // self.layer.addSublayer(gradientLayer)
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func layoutSubviews()
    {
        if let rect = self.layer.bounds as CGRect?
        {
            gradientLayer.frame = rect
        }
    }
}
