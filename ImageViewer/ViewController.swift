//
//  ViewController.swift
//  ImageViewer
//
//  Created by 권성우 on 15/08/2019.
//  Copyright © 2019 권성우. All rights reserved.
//

import UIKit
var imgNum = 0
class ViewController: UIViewController {
    
    var imageName = [ "01.jpg", "02.jpg", "03.jpg", "04.jpg", "05.jpg" ]
    
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: imageName[0])
        
    }
    

    @IBAction func imgPrev(_ sender: UIButton) {
        imgNum = imgNum - 1
        if(imgNum < 0){
            imgNum = imageName.count - 1
        }
        imgView.image = UIImage(named: imageName[imgNum])
    }
    
    
    @IBAction func imgNext(_ sender: UIButton) {
        imgNum = imgNum + 1
        if(imgNum > imageName.count - 1 ){
            imgNum = 0
        }
        imgView.image = UIImage(named: imageName[imgNum])
    }
    
}

