//
//  TraitTest.swift
//  DarkMode
//
//  Created by dreamtracer on 2019/6/13.
//  Copyright © 2019 dreamtracer. All rights reserved.
//

import UIKit

class TraitTest: NSObject,UITraitEnvironment {
    var traitCollection: UITraitCollection = UITraitCollection()
    
    func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
    }
    
}
