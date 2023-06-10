//
//  ViewController.swift
//  HelloWorld
//
//  Created by Muhammed Ali SOYLU on 26.04.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textLabel: UILabel!

    @IBOutlet var forLabel: UILabel!

    @IBOutlet var whileLabel: UILabel!

    @IBOutlet var doWhileLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textLabel.isHidden = false
    }

    @IBAction func forButtonClicked(_ sender: Any) {
        for i in 1 ... 5 {
            Timer.scheduledTimer(withTimeInterval: TimeInterval(i), repeats: false){ _ in
                self.forLabel.text = self.forLabel.text! + String(i)
            }
        }
    }

    @IBAction func whileButtonClicked(_ sender: Any) {
        var i = 1
        while i < 6 {
            Dispatc
            whileLabel.text = (whileLabel.text ?? "0") + String(i)
            i = i + 1
            //bir saniye bekler
            sleep(1)
        }
    }

    @IBAction func doWhileButtonClicked(_ sender: Any) {
        var i = 1
        repeat{
            doWhileLabel.text = doWhileLabel.text! + String(i)
            i+=1
        }while i < 6
        
    }
}
