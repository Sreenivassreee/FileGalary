//
//  ViewController.swift
//  FileGalary
//
//  Created by Sreenivas k on 17/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    let allItems = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath:path)

    }

    

}

