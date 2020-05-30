//
//  VCImageSlide.swift
//  POSLiteWeb
//
//  Created by Python on 5/30/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit

class VCImageSlide: UIViewController,UIScrollViewDelegate {

    @IBOutlet var scrollView: UIScrollView!
    
    
    @IBOutlet var paser: UIPageControl!
    var screenWidth : CGFloat = 0.0
    var screenHeight : CGFloat = 0.0
    
    
    let arrayImages = ["tshirt-1.jpeg","tshirt-2.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
            
        paser.numberOfPages = arrayImages.count
        
        screenWidth = self.view.frame.size.width
        screenHeight = self.view.frame.size.height
        
        scrollView.backgroundColor = UIColor.lightGray
        scrollView.delegate = self
        slideShow()
    }

    
    
    func slideShow()  {

        
        
        var xPoint : CGFloat = 0.0
        for item in arrayImages {

            let tshirtImage = UIImageView.init(frame: CGRect.init(x: xPoint, y: 0, width: screenWidth, height: scrollView.frame.size.height))

            tshirtImage.image = UIImage.init(named: item)
            scrollView.addSubview(tshirtImage)

            xPoint += screenWidth


        }

        
      scrollView.contentSize = CGSize.init(width: screenWidth * CGFloat(arrayImages.count), height: scrollView.frame.size.height)
        scrollView.isPagingEnabled = true
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        paser.currentPage = Int(scrollView.contentOffset.x / screenWidth)        
    }
    
}
