//
//  ParentViewController.swift
//  tabs_test
//
//  Created by shazia akhtar on 2017-08-24.
//  Copyright © 2017 Syed Abbas. All rights reserved.
//

import XLPagerTabStrip

var Pages = [UIViewController]()

class ParentViewController: ButtonBarPagerTabStripViewController {
    

    let purpleInspireColor = UIColor(red:0.13, green:0.03, blue:0.25, alpha:1.0)
    override func viewDidLoad() {
        // change selected bar color
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.selectedBarBackgroundColor = purpleInspireColor
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailiableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .black
            newCell?.label.textColor = self?.purpleInspireColor
        }
        super.viewDidLoad()
    }
    
    
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child1"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child2"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child1"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child2"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child1"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child1"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child2"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child1"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child2"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child1"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child1"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child2"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child1"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child2"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child1"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child1"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child2"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child1"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child2"))
        Pages.append(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "child1"))
        return Pages
    }
    
    //func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        //return IndicatorInfo(title: "sup")
    //}
    
    
    

}
