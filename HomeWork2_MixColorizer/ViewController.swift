//
//  ViewController.swift
//  HomeWork2_MixColorizer
//
//  Created by Алексей Гуляев on 30.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultView: UIView!
    
    @IBOutlet var redLabel: UITextField!
    @IBOutlet var greenLabel: UITextField!
    @IBOutlet var blueLabel: UITextField!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultView.layer.cornerRadius = 15
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        resultView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                             green: CGFloat(greenSlider.value),
                                             blue: CGFloat(blueSlider.value),
                                             alpha: 1)
        
        redLabel.text = String(format: "%.1f", redSlider.value)
        greenLabel.text = String(format: "%.1f", greenSlider.value)
        blueLabel.text = String(format: "%.1f", blueSlider.value)
        
    }
    
    @IBAction func rgbSlider(_ sender: UISlider) {
        resultView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                             green: CGFloat(greenSlider.value),
                                             blue: CGFloat(blueSlider.value),
                                             alpha: 1)
//
        redLabel.text = String(format: "%.1f", redSlider.value)
        greenLabel.text = String(format: "%.1f", greenSlider.value)
        blueLabel.text = String(format: "%.1f", blueSlider.value)
    }
}

