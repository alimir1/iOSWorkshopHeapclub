//
//  ViewController.swift
//  2. GCD
//
//  Created by Ali Mir on 1/13/19.
//  Copyright © 2019 Ali Mir. All rights reserved.
//

import UIKit

//

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func fetchImage(_ sender: Any) {
        let urlString = "https://www.w3schools.com/w3css/img_lights.jpg"
        let url = URL(string: urlString)!

        // GCD: Grand Central Dispatch
        DispatchQueue.global().async {
            // BACKGROUND THREAD
            let imageData = try? Data(contentsOf: url)
            let image = UIImage(data: imageData!)

            // MAIN THREAD
            DispatchQueue.main.async {
                self.imageView.image = image
            }

        }

    }

}

