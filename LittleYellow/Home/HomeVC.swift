//
//  HomeVC.swift
//  LittleYellow
//
//  Created by kid on 2022/11/28.
//

import UIKit
import XLPagerTabStrip


class HomeVC: ButtonBarPagerTabStripViewController {
    
    override func viewDidLoad() {
        
        
        
        
         
        //slectedBar -- 按钮下方的选中条.
        settings.style.selectedBarBackgroundColor = UIColor(named: "main")!
        settings.style.selectedBarHeight = 3
        
        settings.style.buttonBarItemBackgroundColor = UIColor.clear
        settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 16)

        super.viewDidLoad()
        containerView.bounces = false
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }

            oldCell?.label.textColor = .secondaryLabel
            newCell?.label.textColor = .label
 
        }
       
        
        // Do any additional setup after loading the view.
    }
   
   
    
    override public func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let discovery = storyboard!.instantiateViewController(identifier: kDiscoveryVCID)
        let followVC = storyboard!.instantiateViewController(identifier: kFollowVCID)
        let nearbyVC = storyboard!.instantiateViewController(identifier: kNearbyVCID)
        return [discovery , followVC , nearbyVC]
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
