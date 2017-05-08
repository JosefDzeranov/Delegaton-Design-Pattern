//
//  ColorViewController.swift
//  Delegation-Design-Pattern
//
//  Created by Иосиф Дзеранов on 08/05/2017.
//  Copyright © 2017 Иосиф Дзеранов. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    
    var delegate: ColorViewDelegate?
    var colorTextLabel : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("viewDidLoad in ColorViewController")
        
        if let colorText = colorTextLabel {
            SelectingColor?.text = colorText
        }
        else{
            SelectingColor.text = "None"
        }
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    //MARK Outlet
    
    @IBOutlet weak var SelectingColor: UILabel!
   
    
    
    //MARK Action
    
    @IBAction func SelectColor(_ sender: UIButton) {
        print("Func SelectColor in ColorViewController")
        
        if let delegate = self.delegate {
            print("Call func delegate")
            delegate.setColorValue(colorValue: (sender.titleLabel?.text!)!)
            
            print("Dissmiss in ColorViewController")
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    
}
