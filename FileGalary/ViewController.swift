//
//  ViewController.swift
//  FileGalary
//
//  Created by Sreenivas k on 17/05/21.
//

import UIKit

class ViewController: UITableViewController {
    
var allItems = [String]()
    var selected:String=""

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles=true
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        var items = try! fm.contentsOfDirectory(atPath:path)
        var it=[String]()
        for i in items{
            if i.hasPrefix("sree"){
                it.append(i)
            }
        }
        allItems=it.sorted()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text = allItems[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selected = allItems[indexPath.row]
        self.performSegue(withIdentifier: "DetailScreen", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailScreen"{
            var vc = segue.destination as? detailsViewController
            if var i = tableView.indexPathForSelectedRow{
                vc?.selectedImage = allItems[i.row]
            }
            
            
        }
    }
}

