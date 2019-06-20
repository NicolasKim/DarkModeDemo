//
//  Extension.swift
//  Test
//
//  Created by dreamtracer on 2019/6/20.
//  Copyright © 2019 dreamtracer. All rights reserved.
//

import Foundation


extension Bundle {
    static var currentBundle : Bundle?  {
        guard let bundlePath = Bundle.main.path(forResource: "TestBundle", ofType: "bundle") else {
        	return nil
        }
        return Bundle(path: bundlePath)
    }
}

extension UIColor {
    static func t_color(named : String,compatibleWith traitCollection : UITraitCollection?) -> UIColor? {
        let color = UIColor(named: named, in: Bundle.currentBundle, compatibleWith: traitCollection)
        return color
    }
}

extension UIImage {
    
    static func t_image(named : String,compatibleWith traitCollection : UITraitCollection?) -> UIImage? {
        return UIImage(named: named, in: Bundle.currentBundle, compatibleWith: traitCollection)
    }
    
    static func t_symbolImage(named : String,compatibleWith traitCollection : UITraitCollection?) -> UIImage? {
//        let config = UIImage.SymbolConfiguration(weight: .regular)
//        config.withTraitCollection(traitCollection)
        return UIImage(named: named, in: Bundle.currentBundle, compatibleWith: traitCollection)
    }
}
