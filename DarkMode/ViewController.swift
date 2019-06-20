//
//  ViewController.swift
//  DarkMode
//
//  Created by dreamtracer on 2019/6/13.
//  Copyright © 2019 dreamtracer. All rights reserved.
//

import UIKit
import Test

class CustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
//        print("previous=>\(previousTraitCollection) current=>\(self.traitCollection)")
    }
    
}


class ViewController: UIViewController {

    
    let cv = CustomView(frame: .zero)
    let imageView = UIImageView(frame: .zero)
    let test = TraitTest()
    let testView = TestView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        cv.backgroundColor = UIColor(dynamicProvider: { (trait) -> UIColor in
            if trait.userInterfaceStyle == .dark {
                return .red
            } else {
                return .purple
            }
        })
        view.addSubview(cv)
        
        view.addSubview(imageView)
        
        view.addSubview(testView)
        
        if let path = Bundle.main.path(forResource: "Bundle", ofType: "bundle"),let testBundle = Bundle(path: path) {
            let img = UIImage(named: "Image", in: testBundle, compatibleWith: self.traitCollection)
            imageView.image = img
        }
        

		
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
//        print("previous=>\(previousTraitCollection) current=>\(self.traitCollection)")
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        cv.frame = CGRect(origin: CGPoint(x: 0, y: 20), size: CGSize(width: 100, height: 100))
        imageView.frame = CGRect(x: 0, y: cv.frame.maxY, width: 100, height: 100)
        testView.frame = CGRect(x: 0, y: imageView.frame.maxY, width: 100, height: 100)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
}

