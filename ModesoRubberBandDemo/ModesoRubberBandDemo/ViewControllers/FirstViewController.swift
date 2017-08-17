//
//  FirstViewController.swift
//  ModesoRubberBandDemo
//
//  Created by Mohammed Elsammak on 8/17/17.
//  Copyright © 2017 Modeso. All rights reserved.
//

import UIKit
import ModesoNavigationTabs

class FirstViewController: UIViewController, UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //print("scrollviewDid Scroll Delegate")
        (self.parent as? ModesoNavigationTabsViewController)?.handleScrollView(scrollView)
    }
}
