//
//  ViewController.swift
//  SampleApp
//
//  Created by Ali Mir on 1/13/19.
//  Copyright © 2019 Ali Mir. All rights reserved.
//

import UIKit

// CONTROLLER
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // VIEW
        let someButton = GreenButton(frame: CGRect(x: 100, y: 20, width: 300, height: 200))
        someButton.backgroundColor = .green
        someButton.setTitleColor(.black, for: .normal)

        // MODEL
        var someDude = Person(firstName: "Bob", lastName: "Smith", age: 10)

        // CONNECT MODEL WITH VIEW:
        someButton.setTitle(someDude.firstName, for: .normal)

        // DISPLAY
        view.addSubview(someButton)

        someDude.die()
    }


}
