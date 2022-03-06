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
    
    private var redValue: Float = 0
    private var greenValue: Float = 0
    private var blueValue: Float = 0
    
    // MARK: - Internal func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDefaultSettings(redValue: 0.3, greenValue: 0.4, blueValue: 0.5)
    }
    
    // MARK: - Private func
    
    @IBAction private func redSliderAction(_ sender: UISlider) {
        redValue = sender.value
        updateContent()
    }
    
    @IBAction private func greenSliderAction(_ sender: UISlider) {
        greenValue = sender.value
        updateContent()
    }
    
    @IBAction private func blueSliderAction(_ sender: UISlider) {
        blueValue = sender.value
        updateContent()
    }
    
    private func setDefaultSettings(redValue: Float, greenValue: Float, blueValue: Float) {
        displayColorView.layer.cornerRadius = 16
        
        self.redValue = redValue
        self.greenValue = greenValue
        self.blueValue = blueValue
        
        redSliderView.value = redValue
        greenSliderView.value = greenValue
        blueSliderView.value = blueValue
        
        updateContent()
    }
    
    private func updateContent() {
        displayColorView.backgroundColor = .init(red: CGFloat(redValue),
                                                 green: CGFloat(greenValue),
                                                 blue: CGFloat(blueValue),
                                                 alpha: 1)
        
        volumRedColorLabel.text = String(format: "%.2f", redValue)
        volumGreenColorLabel.text = String(format: "%.2f", greenValue)
        volumBlueColorLabel.text = String(format: "%.2f", blueValue)
    }
}
