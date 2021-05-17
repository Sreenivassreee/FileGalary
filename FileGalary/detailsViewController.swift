//
//  detailsViewController.swift
//  FileGalary
//
//  Created by Sreenivas k on 17/05/21.
//

import UIKit

class detailsViewController: UIViewController {
    var selectedImage:String?
    @IBOutlet weak var image: UIImageView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title=selectedImage
        navigationItem.largeTitleDisplayMode = .never
        print(selectedImage)
        if let s = selectedImage{
            image.image = UIImage(named: s)
        }
        
    }
  
}
