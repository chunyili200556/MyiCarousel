//
//  ViewController.swift
//  MyiCarousel
//
//  Created by 黎峻亦 on 2018/7/7.
//  Copyright © 2018年 黎峻亦. All rights reserved.
//

import UIKit
import iCarousel

class ViewController: UIViewController {
    
    
    @IBOutlet weak var iCarouselView: iCarousel!
    var dogName = ["beagle","bordercollie","bulldog","busset_hound","corgi","shelter","shiba","stupiddog","taiwandog"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iCarouselView.type = .rotary
        iCarouselView.contentMode = .scaleAspectFit
        iCarouselView.isPagingEnabled = true
        iCarouselView.isVertical = true
    }
}
extension ViewController : iCarouselDelegate,iCarouselDataSource{
    func numberOfItems(in carousel: iCarousel) -> Int {
        return dogName.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        var customView : CustomUIView
        let dog = dogName[index]
        
        if view == nil{
            customView = CustomUIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width , height: 400))
            customView.imageView.contentMode = .scaleAspectFit
        }else{
            customView = view as! CustomUIView
        }
        
        customView.imageView.image = UIImage(named: dog)
        customView.label.text = dog
        
        return customView
    }
}

