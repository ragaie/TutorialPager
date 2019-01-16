//
//  TutorialViewDelegate.swift
//  TutorialPager
//
//  Created by Ragaie on 1/16/19.
//  Copyright © 2019 Ragaie alfy. All rights reserved.
//

import Foundation
@objc public protocol  TutorialViewDelegate{
    //optional function for delegate
    
    @objc optional
    
    func tutorialView(didDisplayedIndex index:IndexPath)
    @objc optional
    
    func tutorialView(didslectedIndex index:IndexPath)
    
}
