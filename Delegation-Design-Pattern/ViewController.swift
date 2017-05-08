//
//  ViewController.swift
//  Delegation-Design-Pattern
//
//  Created by Иосиф Дзеранов on 08/05/2017.
//  Copyright © 2017 Иосиф Дзеранов. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ColorViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     print("viewDidLoad in View Controller")
     
    }

    
    // MARK Outlets
    @IBOutlet weak var ColorValue: UILabel!

    @IBOutlet weak var ColorUIView: UIView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Call prepare in ViewController")
        
        if(segue.identifier == "selectColor"){
            let destianation = segue.destination as? ColorViewController
            
            destianation?.delegate = self;
            destianation?.colorTextLabel = ColorValue.text!;
            
        }
    }
    
    func setColorValue(colorValue: String) {
        print("Work Func from Delegate setColorValue")
        ColorValue.text = colorValue
        switch colorValue {
        case "Red":
            ColorUIView.backgroundColor = UIColor.red
        case "Green":
            ColorUIView.backgroundColor = UIColor.green
        case "Blue":
            ColorUIView.backgroundColor = UIColor.blue
        default:
            ColorUIView.backgroundColor = UIColor.gray
        }
        
    }
    
}

