//
//  ViewController.swift
//  plistExample
//
//  Created by Dhanshri Pawar on 04/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    struct DefaultSettings : Codable {
        var lastCheckIn : Date
        var noOfSections : Int
        var noOfRowsInSection : Int
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
  
    @IBAction func saveData(_ sender: UIButton) {
    let data = DefaultSettings(lastCheckIn: Date(), noOfSections: 2, noOfRowsInSection: 5)

        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml

        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("AddTask.plist")
        do {
            let data = try encoder.encode(data)
            try data.write(to: path)
        }catch {
            print(error)
        }

    }
    

    @IBAction func getData(_ sender: UIButton) {
        do {
            if let path = Bundle.main.path(forResource: "AddTask", ofType: "plist"),
                let data = FileManager.default.contents(atPath: path),
                let details = try? PropertyListDecoder().decode(DefaultSettings.self, from: data) {
                print("Last check in Date - \(details.lastCheckIn)")
                print("Number of sections - \(details.noOfSections)")
                print("Number of rows in section - \(details.noOfRowsInSection)")
            }

        }
        
    }
    

}

