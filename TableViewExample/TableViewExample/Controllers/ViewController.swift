//
//  ViewController.swift
//  TableViewExample
//
//  Created by Gor Yeghoyan on 12/1/19.
//  Copyright © 2019 Gor Yeghoyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var dataOfCells: [CellModel] = [CellModel(image: #imageLiteral(resourceName: "night"), description: "Women statue in centre of Gyumri at night", headline: "Women"), CellModel(image: #imageLiteral(resourceName: "street"), description: "Central part of Gyumri", headline:  "Rijkov Street"), CellModel(image: #imageLiteral(resourceName: "sayatnova"), description: "Statue of famose armenian singer and autor of musics Sayat Nova", headline: "Sayat-Nova")]
    

    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "MyTableViewCell", bundle: nil), forCellReuseIdentifier: "CellNib")
        //tableView.register(MyTableViewCell.self, forCellReuseIdentifier: "CellNib")
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataOfCells.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CellNib", for: indexPath) as? MyTableViewCell {
            cell.model = dataOfCells[indexPath.row]
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "goToPhoto", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PhotoDescriptionViewController {
            
            destination.news = dataOfCells[(tableView.indexPathForSelectedRow?.row)!]
            tableView.deselectRow(at: tableView.indexPathForSelectedRow!, animated: true)
            }
    }
}
