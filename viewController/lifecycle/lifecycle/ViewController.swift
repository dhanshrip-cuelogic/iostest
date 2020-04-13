//
//  ViewController.swift
//  lifecycle
//
//  Created by Dhanshri Pawar on 13/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewtext2: UILabel!
    @IBOutlet weak var viewtext1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("In view1 viewDidLoad called.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("In view1 viewWillAppear called.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("In view1 viewDidAppear called.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("In view1 viewWillDisappear called.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("In view1 viewDidDisappear called.")
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToNextPage" , sender: self)
    }
    
}

