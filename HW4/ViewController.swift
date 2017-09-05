//
//  ViewController.swift
//  HW4
//
//  Created by Rusanov Dima on 05.09.17.
//  Copyright © 2017 Rusanov Dima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let myCar = Car(brand: "BMW", model: "X6", color: "black", carMileage: 150.5, power: 3.0, maxSpeed: 280.0)


    @IBOutlet weak var brandLabel: UILabel!

    @IBOutlet weak var modelLabel: UILabel!

    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var maxSpeedLabel: UILabel!
    @IBOutlet weak var mileageLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        reloadUI()
    }
    func reloadUI() {
        brandLabel.text = myCar.brand
        modelLabel.text = myCar.model
        powerLabel.text = "\(myCar.power) hp"
        colorLabel.text = "\(myCar.color)"
        maxSpeedLabel.text = "\(myCar.maxSpeed)"
        mileageLabel.text = "\(myCar.carMileage)"
        priceLabel.text = "\(myCar.getPrice())$"
    }
    @IBAction func upPower(_ sender: UIButton) {
        myCar.upgradePower()
        reloadUI()
    }
    @IBAction func aggrButton(_ sender: UIButton) {
        myCar.aggravatePower()
        reloadUI()
    }
    @IBAction func testButton(_ sender: UIButton) {
        myCar.testing()
        reloadUI()
    }

    
    
}


