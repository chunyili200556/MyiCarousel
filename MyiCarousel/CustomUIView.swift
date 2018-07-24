//
//  CustomUIView.swift
//  MyiCarousel
//
//  Created by 黎峻亦 on 2018/7/7.
//  Copyright © 2018年 黎峻亦. All rights reserved.
//

import UIKit

class CustomUIView: UIView {
    
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)
        containerView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.8, height: self.bounds.height)

        containerView.center.x = self.center.x
        containerView.center.y = self.center.y
        containerView.layer.cornerRadius = 15.0
        
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOpacity = 0.8
        containerView.layer.shadowOffset = CGSize.zero
        addSubview(containerView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
