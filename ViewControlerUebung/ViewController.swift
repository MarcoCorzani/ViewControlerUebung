//
//  ViewController.swift
//  ViewControlerUebung
//
//  Created by Marco F.A. Corzani on 27.12.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    var colorView: UIView!
   
    
    @IBOutlet weak var colorSelect: UISegmentedControl!
    
    
    @IBAction func segmentButton(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        
        case 0: colorView?.backgroundColor = UIColor.redColor()
        
        case 1: colorView?.backgroundColor = UIColor.greenColor()
        
        case 2: colorView?.backgroundColor = UIColor.blueColor()
        
        default:
            println("Error: segment \(sender.selectedSegmentIndex) does not exist")
        }
    
    
    }
    
    
    @IBAction func showHide(sender: UIButton) {
        if sender.titleLabel?.text == "Show" {
            sender.setTitle("Hide", forState: UIControlState.Normal)
            colorSelect.selectedSegmentIndex = 0
            let colorViewFrame = CGRectMake(120, 300, 140, 140)
            colorView = UIView(frame: colorViewFrame)
            colorView.backgroundColor = UIColor.redColor()
            view.addSubview(colorView)
        } else {
            sender.setTitle("Show", forState: UIControlState.Normal)
            colorView.removeFromSuperview()
            colorView = nil
        
        }
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
    
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

