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
    
    var dispImageNo = 0

    @IBAction func onPrev(_ sender: Any) {
       
        dispImageNo -= 1
        displayImage()
    }
 
    @IBAction func onNext(_ sender: Any) {
        
        dispImageNo += 1
        displayImage()
    }
    
    
    func displayImage() {
        
        let imageNameArray = ["5D853BF6-81A1-11DF-88B7-F2385CF189A3_l.jpg", "B98E3A38-80D4-11DF-AE89-F1385CF189A3_l.jpg", "e747989e649991156cc9303fc2edd339--sato.jpg"]
        
        if dispImageNo < 0 {
            dispImageNo = 2
        }
        
        // 範囲より上を指している場合、最初の画像を表示
        if dispImageNo > 2 {
            dispImageNo = 0
            
        }
        
        let name = imageNameArray[dispImageNo]
        
        let image = UIImage(named: name)
        // Image Viewに読み込んだ画像をセット
        
        imageView.image = image
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image = UIImage(named: "5D853BF6-81A1-11DF-88B7-F2385CF189A3_l.jpg")
        
        
        imageView.image = image
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

