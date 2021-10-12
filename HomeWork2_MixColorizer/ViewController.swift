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
        
        setColor()
        
        setValue(for: redLabel, greenLabel, blueLabel)
        
    }
    
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        
        switch sender.tag {
        case 0: redLabel.text = string(from: sender)
        case 1: greenLabel.text = string(from: sender)
        case 2: blueLabel.text = string(from: sender)
        default: break
        }
//
       
    }
    
    // MARK: Methods
    private func setColor() {
        resultView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                             green: CGFloat(greenSlider.value),
                                             blue: CGFloat(blueSlider.value),
                                             alpha: 1)
    }
    
    func setValue(for laybels: UITextField...) {
        laybels.forEach { laybel in
            switch laybel.tag {
            case 0: redLabel.text = string(from: redSlider)
            case 1: greenLabel.text = string(from: greenSlider)
            case 2: blueLabel.text = string(from: blueSlider)
            default: break
            }
        }
    }
    
        
    private func string(from slider: UISlider) -> String {
            String(format: "%.2f", slider.value)
    }
}

