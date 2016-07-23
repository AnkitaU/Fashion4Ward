//
//  YayOrNayVC.swift
//  iOSDevCamp
//
//  Created by Becky Chan on 7/23/16.
//  Copyright © 2016 Becky Chan. All rights reserved.
//

import UIKit

class YayOrNayVC: UIViewController {

    
    @IBOutlet weak var YayOrNayTitle: UILabel!
    
    @IBOutlet weak var likeNext: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    YayOrNayTitle.text = "What you think? Yay/Nay?"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
