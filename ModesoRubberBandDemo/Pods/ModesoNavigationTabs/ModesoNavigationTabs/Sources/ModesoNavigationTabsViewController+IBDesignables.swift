//
//  ModesoNavigationTabsViewController+IBDesignables.swift
//  ModesoNavigationTabs
//
//  Created by Mohammed Elsammak on 3/25/17.
//  Copyright © 2017 Modeso. All rights reserved.
//

import Foundation


@IBDesignable extension ModesoNavigationTabsViewController {
    
    // MARK:- Tabs
    @IBInspectable var tabWidth: CGFloat {
        set {
            navigationTabWidth = newValue
        }
        get {
            return navigationTabWidth
        }
    }
    @IBInspectable var tabHeight: CGFloat {
        set {
            navigationTabHeight = newValue
        }
        get {
            return navigationTabHeight
        }
    }
    @IBInspectable var activeBkgColor: UIColor {
        set {
            activeTabColor = newValue
        }
        get {
            return activeTabColor
        }
    }
    @IBInspectable var inactiveBkgColor: UIColor {
        set {
            inactiveTabColor = newValue
        }
        get {
            return inactiveTabColor
        }
    }
    @IBInspectable var activeTextColor: UIColor {
        set {
            activeTabTextColor = newValue
        }
        get {
            return activeTabTextColor
        }
    }
    @IBInspectable var inactiveTextColor: UIColor {
        set {
            inactiveTabTextColor = newValue
        }
        get {
            return inactiveTabTextColor
        }
    }
    @IBInspectable var innerMargin: CGFloat {
        set {
            tabInnerMargin = newValue
        }
        get {
            return tabInnerMargin
        }
    }
    
    @IBInspectable var outerMargin: CGFloat {
        set {
            tabOuterMargin = newValue
        }
        get {
            return tabOuterMargin
        }
    }
    
    // MARK:- Indicator
    @IBInspectable var indicatorHeight: CGFloat {
        set {
            indicatorViewHeight = newValue
        }
        get {
            return indicatorViewHeight
        }
    }
    @IBInspectable var indicatorBkgColor: UIColor {
        set {
            indicatorColor = newValue
        }
        get {
            return indicatorColor
        }
    }
    // MARK:- NavigationBar
    @IBInspectable var titlesScroll: Int {
        set {
            if let value = TabsScrollStatus(rawValue: newValue) {
                tabsBarStatus = value
            }
        }
        get {
            return tabsBarStatus.hashValue
        }
    }
    
    @IBInspectable var tabsBarHeight: CGFloat {
        set {
            navigationBarHeight = newValue
        }
        get {
            return navigationBarHeight
        }
    }
    
    @IBInspectable var tabsBarCorner: CGFloat {
        set {
            tabsCornerRadius = newValue
        }
        get {
            return tabsCornerRadius
        }
    }
    
    @IBInspectable var tabsBkgColor: UIColor {
        set {
            navigationBarColor = newValue
        }
        get {
            return navigationBarColor
        }
    }
    
    @IBInspectable var tabsAnimation: Bool {
        set {
            enableResizingAnimated = newValue
        }
        get {
            return enableResizingAnimated
        }
    }
    @IBInspectable var enableShadowOnScrolling: Bool {
        set {
            enableScrollingShadow = newValue
        }
        get {
            return enableScrollingShadow
        }
    }
    
    @IBInspectable var scrollViewBkgColor: UIColor {
        set {
            scrollViewBackgroundColor = newValue
        }
        get {
            return scrollViewBackgroundColor
        }
    }
    // MARK:- ViewControllers scrollview
    @IBInspectable var scrollBounce: Bool {
        set {
            enableBounce = newValue
        }
        get {
            return enableBounce
        }
    }
    
    @IBInspectable var cycle: Bool {
        set {
            enableCycles = newValue
        }
        get {
            return enableCycles
        }
    }
}
