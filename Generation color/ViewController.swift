//
//  ViewController.swift
//  Generation color
//
//  Created by Tatiana Sosina on 06.03.2022.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - Private property
    
    @IBOutlet weak private var displayColorView: UIView!
    
    @IBOutlet weak private var volumRedColorLabel: UILabel!
    @IBOutlet weak private var volumGreenColorLabel: UILabel!
    @IBOutlet weak private var volumBlueColorLabel: UILabel!
    
    @IBOutlet weak private var redSliderView: UISlider!
    @IBOutlet weak private var greenSliderView: UISlider!
    @IBOutlet weak private var blueSliderView: UISlider!
    
    // MARK: - Internal func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDefaultSettings(redValue: 0.3, greenValue: 0.4, blueValue: 0.5)
    }
    
    // MARK: - Private func
    
    @IBAction func sliderAction() {
        updateContent()
    }
    
    private func setDefaultSettings(redValue: Float, greenValue: Float, blueValue: Float) {
        displayColorView.layer.cornerRadius = 16
        
        redSliderView.value = redValue
        greenSliderView.value = greenValue
        blueSliderView.value = blueValue
        
        updateContent()
    }
    
    private func updateContent() {
        displayColorView.backgroundColor = .init(red: CGFloat(redSliderView.value),
                                                 green: CGFloat(greenSliderView.value),
                                                 blue: CGFloat(blueSliderView.value),
                                                 alpha: 1)
        
        volumRedColorLabel.text = String(format: "%.2f", redSliderView.value)
        volumGreenColorLabel.text = String(format: "%.2f", greenSliderView.value)
        volumBlueColorLabel.text = String(format: "%.2f", blueSliderView.value)
    }
}
