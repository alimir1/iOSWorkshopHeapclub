//
//  ViewController.swift
//  4. Networking in iOS
//
//  Created by Ali Mir on 1/13/19.
//  Copyright © 2019 Ali Mir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*
     Networking in iOS:
     1. Fetch data from network (URLSession task)
     2. Convert data into Swift objects
     3. Use that object to display onto screen using UIKit (Labels, images, etc)
     */

    override func viewDidLoad() {
        super.viewDidLoad()

        let urlString = "http://data.nba.net/10s/prod/v1/today.json"
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)


        // URLSession is already in background thread by default. No need for GCD here.
        let task = URLSession.shared.dataTask(with: request) {
            data, response, error in

            guard error == nil else {
                print(error!.localizedDescription)
                return
            }

            guard let data = data else {
                print("no data!")
                return
            }

            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments), let dict = json as? [String : AnyObject] {
                print(dict)
            } else {
                print("no json available!")

                // Use main thread to update UIKit stuff because code above is in background thread
                DispatchQueue.main.async {
                    // update UI here
                }

            }

        }

        task.resume()

    }
}

