//
//  DetailsViewController.swift
//  TableViewProject
//
//  Created by Ali Yasin DOĞAN on 29.06.2024.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var selectedFlowersName=""
    var selectedFlowersImageName=""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image=UIImage(named:selectedFlowersImageName)
        label.text=selectedFlowersName
    }
}
