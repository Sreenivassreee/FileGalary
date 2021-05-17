//
//  ViewController.swift
//  FileGalary
//
//  Created by Sreenivas k on 17/05/21.
//

import UIKit

class ViewController: UITableViewController {
    
var allItems = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath:path)
        allItems = items
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text = allItems[indexPath.row]
        return cell
    }
}

