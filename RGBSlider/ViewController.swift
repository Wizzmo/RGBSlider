//
//  ViewController.swift
//  RGBSlider
//
//  Created by Maxim Makarov on 17.11.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var colourPanelView: UIView!
    
    @IBOutlet var redColourIntensityLabel: UILabel!
    @IBOutlet var greenColourIntensityLabel: UILabel!
    @IBOutlet var blueColourIntensityLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

