//
//  ViewController.swift
//  TheWalkingScrollView
//
//  Created by olalekan bisiriyu on 2016-08-29.
//  Copyright © 2016 olalekan bisiriyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 240
    let HEIGHT: CGFloat = 397
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for var x = 1; x<=5; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 350, WIDTH, HEIGHT)
            
            scrollView.contentSize = CGSizeMake(WIDTH * 5, scrollView.frame.size.height)
        }
    }

}

