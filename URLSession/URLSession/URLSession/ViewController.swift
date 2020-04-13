//
//  ViewController.swift
//  URLSession
//
//  Created by Dhanshri Pawar on 08/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        performSession()
    }
    
    func performSession() {
       let weatherURL = "https://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=21ab75b543c47a97ec67b129ca1d6578"
       
       let defaultSession = URLSession(configuration: .default)
       
       let url = URL(string: weatherURL)
       
       let dataTask = defaultSession.dataTask(with: url!) { (Data, Response, error) in
           if error != nil {
               print(error!)
               return
           }
           if let data = Data {
            let dataString = String(data: data, encoding: .utf8)
            print(dataString!)
           }else {
            print("url session failed.")
            }
       }
       dataTask.resume()
    }
}

