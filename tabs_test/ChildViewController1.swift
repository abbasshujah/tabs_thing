//
//  ChildViewController1.swift
//  tabs_test
//
//  Created by shazia akhtar on 2017-08-24.
//  Copyright © 2017 Syed Abbas. All rights reserved.
//

import UIKit
import XLPagerTabStrip


class ChildViewController1: UIViewController, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController ) -> IndicatorInfo {
        
        

        return IndicatorInfo(title: "\(pagerTabStripController.currentIndex_())")
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
