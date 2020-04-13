//
//  ViewController.swift
//  subviews
//
//  Created by Dhanshri Pawar on 16/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mySubView = UIView()
    
    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var hideButton: UIButton!
    
    func changeButtonConfig() {
        showButton.layer.backgroundColor =  UIColor(red:0.0/255.0, green:122.0/255.0, blue:0.0/255.0, alpha:1).cgColor as CGColor
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        print("View did load called first.")

        mySubView.frame = CGRect(x: 100, y: 100, width: 50, height: 100)
        mySubView.backgroundColor = UIColor.red
        
            //changeButtonConfig()
    }

    @IBAction func onClick(_ sender: UIButton) {

        self.view.addSubview(mySubView)

    }

    @IBAction func hideButton(_ sender: UIButton) {

        mySubView.removeFromSuperview()
    }

    override func viewWillAppear(_ animated: Bool) {
           print("View is about to appear.")
     
       }
    override func viewDidAppear(_ animated: Bool) {
         print("View has been displayed on the screen.")
     }

    
    override func viewWillLayoutSubviews() {
        
        print("About to show subview.......")
       
    }

    override func viewDidLayoutSubviews() {
        print("Subview has been displayed on the screen.")
    }

 
    override func viewWillDisappear(_ animated: Bool) {
        print("View is going to disappear in a while......")
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("View has been disappeared now.")
    }

    
}

