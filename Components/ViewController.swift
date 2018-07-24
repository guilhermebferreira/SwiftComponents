//
//  ViewController.swift
//  Components
//
//  Created by labmacmini12 on 24/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //trata o evento de alteração de valor do switch
    @IBAction func handleSwitch(_ sender: UISwitch) {
    }
    //trata o evento de alteração do valor do segmented
    @IBAction func handleSegmented(_ sender: UISegmentedControl) {
    }
    //trata o evento de alteração do slider
    @IBAction func handleSlider(_ sender: UISlider) {
        self.view.alpha = CGFloat(sender.value)
    }
    
}

