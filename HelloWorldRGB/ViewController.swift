//
//  ViewController.swift
//  HelloWorldRGB
//
//  Created by Admin on 26/03/2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var sliderOfRed: UISlider!
    @IBOutlet var sliderOfGreen: UISlider!
    @IBOutlet var sliderOfBlue: UISlider!
    
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    @IBOutlet var viewColor: UIView!
    
    fileprivate func setuplabel() {
        labelRed.text = String(format: "%.2f", sliderOfRed.value)
        labelGreen.text = String(format: "%.2f", sliderOfGreen.value)
        labelBlue.text = String(format: "%.2f", sliderOfBlue.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setuplabel()
        setupSliderRed()
        setupSliderGreen()
        setupSliderBlue()
    }
    
    @IBAction func sliderActionRed(_ sender: Any) {
        labelRed.text = String(format: "%.2f", sliderOfRed.value)
    }
    
    @IBAction func sliderActionGreen(_ sender: Any) {
        labelGreen.text = String(format: "%.2f", sliderOfGreen.value)
    }
    
    @IBAction func sliderActionBlue(_ sender: Any) {
        labelBlue.text = String(format: "%.2f", sliderOfBlue.value)
    }
    
    @IBAction func viewColorChange() {
        viewColor.backgroundColor = UIColor(
            red: CGFloat(sliderOfRed.value),
            green: CGFloat(sliderOfGreen.value),
            blue: CGFloat(sliderOfBlue.value),
            alpha: 1.0
        )
    }
    
    private func setupSliderRed() {
        sliderOfRed.value = 0.5
        sliderOfRed.minimumValue = 0
        sliderOfRed.maximumValue = 1
        sliderOfRed.tintColor = .red
    }
    private func setupSliderGreen() {
        sliderOfGreen.value = 0.5
        sliderOfGreen.minimumValue = 0
        sliderOfGreen.maximumValue = 1
        sliderOfGreen.tintColor = .green
    }
    private func setupSliderBlue() {
        sliderOfBlue.value = 0.5
        sliderOfBlue.minimumValue = 0
        sliderOfBlue.maximumValue = 1
        sliderOfBlue.tintColor = .blue
    }
    
}


