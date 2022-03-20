//
//  ViewController.swift
//  hw1
//
//  Created by Ян Таше on 19.03.2022.
//

import UIKit

class ViewController: UIViewController {
    var currentSignal = 0

    @IBOutlet var buttonStart: UIButton!
    @IBOutlet var redSignal: UILabel!
    @IBOutlet var yellowSignal: UILabel!
    @IBOutlet var greenSignal: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        redSignal.layer.masksToBounds = true
        redSignal.layer.cornerRadius = 50
        yellowSignal.layer.masksToBounds = true
        yellowSignal.layer.cornerRadius = 50
        greenSignal.layer.masksToBounds = true
        greenSignal.layer.cornerRadius = 50
        buttonStart.layer.cornerRadius = 10
        redSignal.alpha = 0.3
        yellowSignal.alpha = 0.3
        greenSignal.alpha = 0.3
    }

    @IBAction func letsStart(_ sender: Any) {
        let arrayOfSignals: [UILabel?] = [redSignal, yellowSignal, greenSignal]
        buttonStart.setTitle("NEXT", for: .normal)
        switch currentSignal {
        case 0:
            arrayOfSignals[2]?.alpha = 0.3
            arrayOfSignals[0]?.alpha = 1
            currentSignal += 1
        case 1:
            arrayOfSignals[0]?.alpha = 0.3
            arrayOfSignals[1]?.alpha = 1
            currentSignal += 1
        case 2:
            arrayOfSignals[1]?.alpha = 0.3
            arrayOfSignals[2]?.alpha = 1
            currentSignal = 0
        default:
            break
        }
    }
}

