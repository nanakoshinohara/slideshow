//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 篠原七子 on 2018/02/16.
//  Copyright © 2018年 篠原七子. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    @IBAction func onPrev(_ sender: Any) {
       
        dispImageNo -= 1
        displayImage()
    }
 
    @IBAction func onNext(_ sender: Any) {
        
        dispImageNo += 1
        displayImage()
    }
    
    var dispImageNo = 0
    
    func displayImage() {
        
        let imageNameArray = ["images-3.jpeg", "images-2.jpeg", "5D853BF6-81A1-11DF-88B7-F2385CF189A3_l.jpg"]
        
        let name = imageNameArray[dispImageNo]
        
        let image = UIImage(named: name)
        // Image Viewに読み込んだ画像をセット
        
        imageView.image = image
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

