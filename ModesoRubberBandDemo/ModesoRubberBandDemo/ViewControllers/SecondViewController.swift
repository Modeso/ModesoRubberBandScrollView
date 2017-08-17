//
//  SecondViewController.swift
//  ModesoRubberBandDemo
//
//  Created by Mohammed Elsammak 8/17/17.
//  Copyright © 2017 Modeso. All rights reserved.
//

import UIKit
import ModesoNavigationTabs

class SecondViewController: UIViewController, UIScrollViewDelegate {

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        (self.parent as? ModesoNavigationTabsViewController)?.handleScrollView(scrollView)
    }

}
