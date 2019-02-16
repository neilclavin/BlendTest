//
//  ViewController.swift
//  BlendTest
//
//  Created by Neil Clavin on 16/02/2019.
//  Copyright © 2019 Neil Clavin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    
    func blendImage(chooseImage: UIImageView) {
        if  let img = UIImage(named: "lucaA"), let img2 = UIImage(named: "lucaB") {
            let rect = CGRect(x: 0, y: 0, width: img.size.width, height: img.size.height)
            let renderer = UIGraphicsImageRenderer(size: img.size)
            
           let result = renderer.image { ctx in
                // fill the background with white so that translucent colors get lighter
                UIColor.white.set()
                ctx.fill(rect)
                
                img.draw(in: rect, blendMode: .normal, alpha: 1)
                img2.draw(in: rect, blendMode: .multiply, alpha: 1)
            
           
    
            }
             resultImage.image = result
            
        }
    }
    
        
        
    
        
    
        override func viewDidLoad() {
            super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            blendImage (chooseImage: resultImage)
    }


}



