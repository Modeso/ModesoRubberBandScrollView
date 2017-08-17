# ModesoNavigationTabs
<p align="center">
  <img src="https://media.licdn.com/mpr/mpr/shrink_200_200/AAEAAQAAAAAAAAZsAAAAJDM2NTU0MDA1LTA3YmEtNGUyMC05YmZjLTIxMDNlZWZlM2ZkMQ.png">
</p>

[![Build Status](https://img.shields.io/travis/rust-lang/rust.svg)](https://img.shields.io/travis/rust-lang/rust.svg)
[![CocoaPods Compatible](https://img.shields.io/badge/Pod-compatible-4BC51D.svg
)](https://cocoapods.org
)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Platform](https://img.shields.io/badge/Platform-iOS-d3d3d3.svg)]()
[![Twitter](https://img.shields.io/badge/twitter-@modeso_ch-0B0032.svg?style=flat)](http://twitter.com/AlamofireSF)

ModesoNavigationTabs is a Navigation Tabs library written in Swift. It enables switching between different UIViewController in an elegant way with a lot of features and ease of use.

<img src="https://raw.githubusercontent.com/Modeso/ModesoNavigationTabs/master/2.gif?token=AASve6-SxJXgc73hDhBM6U7rkDxdw8Zdks5Y4lk5wA%3D%3D" alt="GifDemo">
<img src="https://raw.githubusercontent.com/Modeso/ModesoNavigationTabs/master/1.gif?token=AASve6-SxJXgc73hDhBM6U7rkDxdw8Zdks5Y4lk5wA%3D%3D" alt="GifDemo">

- [Options](#options)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Communication](#communication)
- [Credits](#credits)
- [License](#license)

## Options

<img src="https://github.com/Modeso/ModesoNavigationTabs/blob/master/Options.png" alt="Options">

- `Tab Width`: Define width of single tabs which holds titles of the viewControllers objects.
- `Tab Height`: Define height of single tabs which holds titles of the viewControllers objects.
- `Active Bkg Color`: Background color for the current selected tab.
- `InActive Bkg Color`: Background color for the rest of the unselected tabs.
- `Active Text Color`: Text color of the current selected tab.
- `Inactive Text Color`: Text color of the rest if the unselected tabs.
- `Inner Margin`: Space between each tab.
- `Outer Margin`: Leading and trailing spaces of the first and last tabs.
- `Indicator Height`: Height of the indicator which define the current selected tab.
- `Indicator Bkg Color`: Indicator color.
- `titlesScroll`: This one is very important, unfortunately xCode does not allow to define enum in xib files so this will take one of three integer values.
> 0: `.fixed`: In case of large tab width, this will prevent scrolling and tabs will extend beyond screen width.<br />
> 1: `.scrollable`: Same as above, but scrolling is now enabled.<br />
> 2: `.fit`: The default status, this will ignore tabWidth and adjust all tabs to fit inside single screen (not recommended for large numbers of tabs).<br />
> 3: `.center`: Set active tabs to the center of the screen.<br />
- `Tabs Bar Height`: Height of the Tabs Navigation bar.
- `Tabs Bar Corner`: Corner radius of each Tab.
- `Tabs Bkg Color`: Background color of Tabs Navigation bar.
- `Tabs Animation`: Enlarge selected tab with animation.
- `Enable Global Scrolling`: The whole viewController is scrolled and shadow appears.
- `Scroll View Bkg Color`: UIViewcontrollers' Scrollview background color.
- `Scroll Bounce`: Enable/disable bounce for the displayed UIViewControllers.
- `Cycle`: Infinite Scrollview (ViewControllers will be cycled).

## Requirements

- iOS 8.0+
- Xcode 8.1+
- Swift 3.0+


## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.2.0+ is required to build ModesoNavigationTabs.

To integrate ModesoNavigationTabs into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'ModesoNavigationTabs', :git => 'https://github.com/Modeso/ModesoNavigationTabs.git'
end
```

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate ModesoNavigationTabs into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "Modeso/ModesoNavigationTabs"
```

Run `carthage update` to build the framework and drag the built `ModesoNavigationTabs.framework` into your Xcode project.

### Manually

If you prefer not to use either of the aforementioned dependency managers, you can integrate ModesoNavigationTabs into your project manually.
> Simply download zip folder and unarchieve it, drag the directory `Sources/` into your project navigation and that's it.
---

## Usage

### Xib file

<img src="https://github.com/Modeso/ModesoNavigationTabs/blob/master/Xib.png" alt="Xib">
- Embed a UIViewController inside ContainerView.
- Call the SegueIdentifier any suitable name ex. ModesoNavigationTabs.
- Change the class of the new added UIViewController to `ModesoNavigationTabsViewController`

### Code

In `viewController.m` class import `ModesoNavigationTabs`
```swift
import ModesoNavigationTabs
```
Define a new ModesoNavigationTabsViewController instance.
```swift
var modesoNavigationTabs: ModesoNavigationTabsViewController
```
Assign it in `prepaerforSegue` method
```swift
// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ModesoNavigationTabs" {
            modesoNavigationTabs = segue.destination as? ModesoNavigationTabsViewController
        }
    }
```
Finally, set necessary parameters for `modesoNavigationTabs` instance
```swift
modesoNavigationTabs.viewControllersArray = [firstViewController,secondViewController,thirdViewController, forthViewController]
modesoNavigationTabs.viewControllersTitlesArray = [NSAttributedString(string: "First"),NSAttributedString(string: "Second"),NSAttributedString(string: "Third"),NSAttributedString(string: "Forth")]
modesoNavigationTabs.activeTabFont = UIFont(name: "ArialHebrew", size: 12)!
modesoNavigationTabs.inactiveTabFont = UIFont(name: "ArialHebrew", size: 10)!
modesoNavigationTabs.updateUI()
```
> `viewControllersArray`: Array of UIViewControllers to display and navigate among.
> `viewControllersTitlesArray`: Array of NSAttributedString represensts titles of the UIViewControllers which will be displayed in the top Tabs Navigation Bar.</br>
> `activeTabFont`: Font of the current selected tab.</br>
> `inactiveTabFont`: Font for the resu of the unselected tabs.</br>
> `updateUI`: is a must to-be-called method, this will update all ModesoNavigationTabs attributes and adjust views.

## Communication

- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## Credits

ModesoNavigationTabs is owned and maintained by [Modeso](http://modeso.ch). You can follow them on Twitter at [@modeso_ch](https://twitter.com/modeso_ch) for project updates and releases.

## License

ModesoNavigationTabs is released under the MIT license. See LICENSE for details.
