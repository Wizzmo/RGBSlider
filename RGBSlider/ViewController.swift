//
//  ViewController.swift
//  RGBSlider
//
//  Created by Maxim Makarov on 17.11.2023.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var colourPanelView: UIView!
    
    @IBOutlet var redColourIntensityLabel: UILabel!
    @IBOutlet var greenColourIntensityLabel: UILabel!
    @IBOutlet var blueColourIntensityLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colourPanelView.layer.cornerRadius = 20
        
        changeViewBackgroundColour()
        setupLabels()
    }
    
    // MARK: - IB Actions
    @IBAction func redSliderValueChanged() {
        changeViewBackgroundColour()
        redColourIntensityLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func greenSliderValueChanged() {
        changeViewBackgroundColour()
        greenColourIntensityLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func blueSliderValueChanged() {
        changeViewBackgroundColour()
        blueColourIntensityLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    // MARK: - Private Methods
    private func setupLabels() {
        redColourIntensityLabel.text = redSlider.value.formatted()
        greenColourIntensityLabel.text = greenSlider.value.formatted()
        blueColourIntensityLabel.text = blueSlider.value.formatted()
    }
    
    private func changeViewBackgroundColour() {
        colourPanelView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
    }
}

