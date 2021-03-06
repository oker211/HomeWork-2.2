//
//  SettingsViewController.swift
//  HomeWork 2.2
//
//  Created by Филипп Слабодецкий on 30.01.2021.
//

import UIKit

protocol BackgroundColorDeligate {
    func backgroundColor(color: Color)
}

class SettingsViewController: UIViewController {

    // MARK:- IB Outlets
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    // MARK:- Properties
    var deligate: BackgroundColorDeligate!
    var viewColor: Color!
   
    private var redColor: CGFloat!
    private var blueColor: CGFloat!
    private var greenColor: CGFloat!
    private var alpha: CGFloat!
    
    
    // MARK:- Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColor = viewColor.red
        blueColor = viewColor.blue
        greenColor = viewColor.green
        alpha = viewColor.alpha
        
        valueSlider()
        valueSliderLabel()
        setValueSliderProperties()
       
        mainView.layer.cornerRadius = 20

    }
    
    // MARK:- IB Action
    
    @IBAction func sendBackgroundColorButton() {
        let viewColor = Color(red: redColor, green: greenColor, blue: blueColor, alpha: alpha)
        deligate.backgroundColor(color: viewColor)
        
    }
    @IBAction func redSliderAction() {
        redLabel.text = String(format: "%.2f",redSlider.value)
        redColor = CGFloat(redSlider.value)
        setValueSliderProperties()
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        blueColor = CGFloat(blueSlider.value)
        setValueSliderProperties()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        greenColor = CGFloat(greenSlider.value)
        setValueSliderProperties()
    }
    
    // MARK: -  Methods
    
  
  
    
    // MARK: - Private Methods
    
    private func valueSlider() {
        
        // Minimal Value Slider
        redSlider.minimumValue = 0
        blueSlider.minimumValue = 0
        greenSlider.minimumValue = 0
        
        // Maximum Value Slider
        redSlider.maximumValue = 1
        blueSlider.maximumValue = 1
        greenSlider.maximumValue = 1
        
        // Random Value Slider
        redSlider.value = Float(redColor)
        blueSlider.value = Float(blueColor)
        greenSlider.value = Float(greenColor)
        
        // Thumb Color
        redSlider.thumbTintColor = .red
        blueSlider.thumbTintColor = .blue
        greenSlider.thumbTintColor = .green
        
        // Minimum Track Color
        redSlider.minimumTrackTintColor = .red
        blueSlider.minimumTrackTintColor = .blue
        greenSlider.minimumTrackTintColor = .green
        
        // Maximum Track Color
        redSlider.maximumTrackTintColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        blueSlider.maximumTrackTintColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        greenSlider.maximumTrackTintColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    }
    
    private func valueSliderLabel() {
        
        redLabel.text = String(format: "%.2f",redSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    private func setValueSliderProperties() {
        
        mainView.backgroundColor = UIColor.init(red: redColor,
                                                green: greenColor,
                                                blue: blueColor,
                                                alpha: alpha)
        
    }
}

