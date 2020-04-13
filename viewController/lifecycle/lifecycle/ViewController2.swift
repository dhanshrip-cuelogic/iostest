//
//  ViewController2.swift
//  lifecycle
//
//  Created by Dhanshri Pawar on 13/03/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class ViewController2 : UIViewController {
    @IBOutlet weak var lifecycle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("In view2 viewDidLoad called.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("In view2 viewWillAppear called.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("In view2 viewDidAppear called.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("In view2 viewWillDisappear called.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("In view2 viewDidDisappear called.")
    }
}
