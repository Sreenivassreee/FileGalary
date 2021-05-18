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
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector (share))

        if let s = selectedImage{
            image.image = UIImage(named: s)
        }
        
    }
    
    @objc func share() {
        guard let i = image.image?.jpegData(compressionQuality: 0.8)else {
            return
        }
        let text = selectedImage

        let Share = [ i , text] as [Any]
            let activityViewController = UIActivityViewController(activityItems: Share , applicationActivities: nil)
            activityViewController.popoverPresentationController?.sourceView = self.view
            self.present(activityViewController, animated: true, completion: nil)
    }
  
}
