//
//  ViewController.swift
//  TutorialPager
//
//  Created by Ragaie on 1/2/19.
//  Copyright © 2019 Ragaie alfy. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,TutorialViewDelegate{
   
    
    @IBOutlet weak var customData: TutorialView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        customData.dataSourceView = [UIImageView.init(image: UIImage.init(named: "image4.jpg")),UIImageView.init(image:UIImage.init(named: "image3.jpg")),UIImageView.init(image:UIImage.init(named: "image2.jpg")),UIImageView.init(image:UIImage.init(named: "image1.jpg"))]
        customData.tutorialPageControl.isHidden = true
        
       
       // customData.dataSourceViewViewController = [FirstViewController(),SecandViewController()]

        customData.delegate = self
        customData.autoScroll = true
        //change location of pager from button
        //change pager dots size by scale

        
    }

    
    func tutorialView(didDisplayedIndex index: IndexPath) {
        
        print(index.description)
    }
    
    func tutorialView(didslectedIndex index: IndexPath) {
        
        print(index.description)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

