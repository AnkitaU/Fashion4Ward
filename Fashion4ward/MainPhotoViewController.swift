//
//  MainPhotoViewController.swift
//  Fashion4ward
//
//  Created by Dianne Katrina Bronola on 7/23/16.
//  Copyright © 2016 Dianne Bronola. All rights reserved.
//

import UIKit

class MainPhotoViewController: UIViewController{
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBAction func nextImage(sender: UIButton) {
        generateRandomPic()
        
    }
    override func viewWillAppear(animated: Bool) {
        generateRandomPic()
    }
    
    
    @IBAction func addPhoto(sender: UIBarButtonItem) {
        let controller = storyboard!.instantiateViewControllerWithIdentifier("PhotoEditorViewController") as! PhotoEditorViewController
        self.navigationController!.pushViewController(controller, animated: true)
    }
    
    
    
    @IBAction func ratePhoto(sender: UIButton) {
        //navigate to ratingphotoview
    }
    
    
    
    func generateRandomPic() {
        let picNames = ["a", "b", "c", "d", "e", "f", "g"]
        let randomIndex = Int(arc4random_uniform(UInt32(picNames.count)))
        mainImageView.image = UIImage(named: picNames[randomIndex])
    }
    

}
