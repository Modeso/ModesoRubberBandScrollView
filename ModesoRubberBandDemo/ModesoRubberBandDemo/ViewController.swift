//
//  ViewController.swift
//  ModesoRubberBandDemo
//
//  Created by Mohammed Elsammak on 8/16/17.
//  Copyright © 2017 Modeso. All rights reserved.
//

import UIKit
import ModesoNavigationTabs

class ViewController: UIViewController {

    var mNavigationTabs: ModesoNavigationTabsViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 8.0/255.0, green: 86.0/255.0, blue: 152.0/255.0, alpha: 1)
        
        let firstViewController = UIStoryboard(name: "ViewControllers", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController")
        let secondViewController = UIStoryboard(name: "ViewControllers", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")
        let thirdViewController = UIStoryboard(name: "ViewControllers", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController")
        let forthViewController = UIStoryboard(name: "ViewControllers", bundle: nil).instantiateViewController(withIdentifier: "ForthViewController")
        
        
        
        mNavigationTabs.viewControllersArray = [firstViewController,secondViewController,thirdViewController, forthViewController]
        mNavigationTabs.viewControllersTitlesArray = [NSAttributedString(string: ""),NSAttributedString(string: ""),NSAttributedString(string: ""),NSAttributedString(string: "")]
        mNavigationTabs.activeTabFont = UIFont(name: "ArialHebrew", size: 12)!
        mNavigationTabs.inactiveTabFont = UIFont(name: "ArialHebrew", size: 10)!
        mNavigationTabs.updateUI()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ModesoNavigationTabs" {
            
            mNavigationTabs = segue.destination as? ModesoNavigationTabsViewController
            
        }
    }
}

