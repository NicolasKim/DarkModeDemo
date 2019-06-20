//
//  TestView.swift
//  Test
//
//  Created by dreamtracer on 2019/6/19.
//  Copyright © 2019 dreamtracer. All rights reserved.
//

import UIKit

open class TestView: UIView {

    lazy var bitMapImage: UIImageView = {
        let imgView = UIImageView(frame: .zero)
        imgView.contentMode = .scaleAspectFit
        imgView.image = UIImage.t_image(named: "Image", compatibleWith: self.traitCollection)
        return imgView
    }()
    
    lazy var symbolImage: UIImageView = {
        let imgView = UIImageView(frame: .zero)
        imgView.contentMode = .scaleAspectFit
        imgView.image = UIImage.t_symbolImage(named: "Symbol", compatibleWith: self.traitCollection)
        return imgView
    }()
    
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.t_color(named: "Color", compatibleWith: self.traitCollection)
        addSubview(bitMapImage)
        addSubview(symbolImage)
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = UIColor.t_color(named: "Color", compatibleWith: self.traitCollection)
        addSubview(bitMapImage)
        addSubview(symbolImage)
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        bitMapImage.frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height / 2.0)
        symbolImage.frame = CGRect(x: 0, y: self.bounds.height / 2.0, width: self.bounds.width, height: self.bounds.height / 2.0)
    }

}
