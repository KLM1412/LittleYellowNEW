//
//  NearbyVC.swift
//  LittleYellow
//
//  Created by kid on 2022/11/28.
//

import UIKit
import XLPagerTabStrip

class NearbyVC: UIViewController ,IndicatorInfoProvider{
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func indicatorInfo(for pagerTabStripController: XLPagerTabStrip.PagerTabStripViewController) -> XLPagerTabStrip.IndicatorInfo {
        return IndicatorInfo(title: "附近")
    }
    

}
