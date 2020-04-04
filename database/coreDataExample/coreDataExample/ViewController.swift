//
//  ViewController.swift
//  coreDataExample
//
//  Created by Dhanshri Pawar on 04/04/20.
//  Copyright © 2020 Dhanshri Pawar. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    var names: [NSManagedObject] = []
    
    let context = (UIApplication.shared.delegate as? AppDelegate)!.persistentContainer.viewContext

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
      super.viewDidLoad()
      
      title = "The List"
      tableView.register(UITableViewCell.self,
                         forCellReuseIdentifier: "Cell")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
//        guard let appdelegate = UIApplication.shared.delegate as? AppDelegate else {
//            return
//        }
//
//        let context = appdelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Item")
        
        do {
            try names = context.fetch(fetchRequest)
        }catch let error as NSError {
            print(error)
        }
        
    }
    
    
    @IBAction func Add(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "New Item", message: "Add new item", preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default) { (saveAction) in
            self.save(name: textField.text!)
            self.tableView.reloadData()
        }
               
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
       
        alert.addTextField { (alertTextField) in
                  textField = alertTextField
              }
         alert.addAction(saveAction)
         alert.addAction(cancelAction)
         present(alert, animated: true, completion: nil)
        
    }
    
    func save(name : String) {
        
        
        let entity = NSEntityDescription.entity(forEntityName: "Item", in: context)!
        
        let items = NSManagedObject(entity: entity, insertInto: context)
        
        items.setValue(name, forKey: "item")
        
        do {
            try context.save()
            names.append(items)
        }catch let error as NSError {
            print(error)
        }
        
    }
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let item = names[indexPath.row]
        
        cell.textLabel?.text = item.value(forKey: "item") as? String
        
        return cell
    }
    
    
}

extension ViewController : UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("In didSelectRowAt function")
        
        var textField = UITextField()

        let item = self.names[indexPath.row]
        //textField.text = item.value(forKey: "item") as? String

        textField.text = item.value(forKeyPath: "item") as? String
        
        let alert = UIAlertController(title: "Update", message: "Make changes here", preferredStyle: .alert)
        
        
        let saveChanges = UIAlertAction(title: "Save", style: .default) { (saveChanges) in
            item.setValue(textField.text!, forKey: "item")
            do {
                try self.context.save()
                self.tableView.reloadData()
            }catch let error as NSError {
                print(error)
            }

        }
        
        let deleteSelected = UIAlertAction(title: "Delete", style: .default) { (deleteSelected) in
            self.context.delete(item)
            do {
                self.names.remove(at: indexPath.row)
                try self.context.save()
                self.tableView.reloadData()
                
            }catch let error as NSError {
                print(error)
            }
        }

        alert.addTextField { (alertTextField) in
            textField = alertTextField
        }
        alert.addAction(saveChanges)
        alert.addAction(deleteSelected)
        present(alert, animated: true, completion: nil)
    }
}
