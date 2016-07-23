//
//  ViewController.swift
//  Fashion4ward
//
//  Created by Dianne Katrina Bronola on 7/23/16.
//  Copyright © 2016 Dianne Bronola. All rights reserved.
//

import UIKit

class PhotoEditorViewController: UIViewController,  UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var eventTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var dressCodeTextField: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func pickImageOption(sender: UIBarButtonItem) {
        let yesCamera = UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)
        if yesCamera{
            pickAnImage(.Camera)
        } else {
            pickAnImage(.PhotoLibrary)
        }
        
        
    }
    
    

    @IBAction func cancel(sender: UIButton) {
        eventTextField.text = ""
        timeTextField.text = ""
        locationTextField.text = ""
        dressCodeTextField.text = ""
        imageView.image = nil
        
    }
    
    
    @IBAction func post(sender: UIButton) {
        //dont know yet
        
    }
  
    
    func pickAnImage(source: UIImagePickerControllerSourceType) {
    let imagePicker = UIImagePickerController()
    imagePicker.sourceType = source
    imagePicker.delegate = self
    presentViewController(imagePicker, animated: true, completion: nil)
    
    }
    
    //imagepicker delegate
    func imagePickerController(picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : AnyObject]){
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.image = image
            imageView.contentMode = .ScaleAspectFill
            
            
        }
        dismissViewControllerAnimated(true, completion: nil)
        
        
    }
    

}

