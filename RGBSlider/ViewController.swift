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
        setupLabels()
        setupColourPanelView()
    }
    
    @IBAction func redSliderValueChanged() {
        redColourIntensityLabel.text = String(format: "%.2f", redSlider.value)
        setupColourPanelView()
    }
    
    @IBAction func greenSliderValueChanged() {
        greenColourIntensityLabel.text = String(format: "%.2f", greenSlider.value)
        setupColourPanelView()
    }
    
    @IBAction func blueSliderValueChanged() {
        blueColourIntensityLabel.text = String(format: "%.2f", blueSlider.value)
        setupColourPanelView()
    }
    
    private func setupLabels() {
        redColourIntensityLabel.text = redSlider.value.formatted()
        greenColourIntensityLabel.text = greenSlider.value.formatted()
        blueColourIntensityLabel.text = greenSlider.value.formatted()
    }
    
    private func setupColourPanelView() {
        colourPanelView.layer.cornerRadius = 30
        
        let redColourValue = CGFloat(redSlider.value)
        let greenColourValue = CGFloat(greenSlider.value)
        let blueColourValue = CGFloat(blueSlider.value)
        
        colourPanelView.backgroundColor = UIColor(
            red: redColourValue,
            green: greenColourValue,
            blue: blueColourValue,
            alpha: 1.0
        )
    }
    
    @IBAction func changeSliderValue() {
    
    }
    
}

