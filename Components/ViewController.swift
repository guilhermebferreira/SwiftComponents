//
//  ViewController.swift
//  Components
//
//  Created by labmacmini12 on 24/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vrSegmented: UISegmentedControl!
    @IBOutlet weak var vrSlider: UISlider!
    @IBOutlet weak var vrImage: UIImageView!
    @IBOutlet weak var vrSwitch: UISwitch!
    @IBOutlet weak var vrLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //trata um toque na tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        vrLabel.isHidden = !vrLabel.isHidden
        vrSwitch.isHidden = !vrSwitch.isHidden
        vrImage.isHidden = !vrImage.isHidden
        vrSegmented.isHidden = !vrSegmented.isHidden
        vrSlider.isHidden = !vrSlider.isHidden
    }
    
    //trata o evento de alteração de valor do switch
    @IBAction func handleSwitch(_ sender: UISwitch) {
        vrSegmented.isEnabled = vrSwitch.isOn
        vrSlider.isEnabled = vrSwitch.isOn
    }
    //trata o evento de alteração do valor do segmented
    @IBAction func handleSegmented(_ sender: UISegmentedControl) {
        switch (sender.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = UIColor.red
        case 1:
            self.view.backgroundColor = UIColor.green
        case 2:
            self.view.backgroundColor = UIColor.purple
        case 3:
            self.view.backgroundColor = UIColor.yellow
        default:
            self.view.backgroundColor = UIColor.white

        }
    }
    //trata o evento de alteração do slider
    @IBAction func handleSlider(_ sender: UISlider) {
        self.view.alpha = CGFloat(sender.value)
    }
    
}

