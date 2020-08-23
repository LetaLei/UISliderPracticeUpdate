//
//  ViewController.swift
//  colorChange
//
//  Created by max on 2020/8/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var totoroImageView: UIImageView!
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var topRedSlider: UISlider!
    @IBOutlet weak var topGreenSlider: UISlider!
    @IBOutlet weak var topBlueSlider: UISlider!
    @IBOutlet weak var topAlphaSlider: UISlider!
    @IBOutlet weak var bottomRedSlider: UISlider!
    @IBOutlet weak var bottomGreenSlider: UISlider!
    @IBOutlet weak var bottomBlueSlider: UISlider!
    @IBOutlet weak var bottomAlphaSlider: UISlider!
    @IBOutlet weak var gradientMiddleSlider: UISlider!
    @IBOutlet weak var cornerRadiusSlider: UISlider!
    @IBOutlet weak var shadowSlider: UISlider!
    let gradientLayer = CAGradientLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


    @IBAction func changeGradientColor(_ sender: UISlider) {
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [CGColor(red: CGFloat(topRedSlider.value), green: CGFloat(topGreenSlider.value), blue: CGFloat(topBlueSlider.value), alpha: CGFloat(topAlphaSlider.value)),CGColor(red: CGFloat(bottomRedSlider.value), green: CGFloat(bottomGreenSlider.value), blue: CGFloat(bottomBlueSlider.value), alpha: CGFloat(bottomAlphaSlider.value))]
        gradientLayer.locations = [0, NSNumber(value: gradientMiddleSlider.value) , 1]
        gradientView.layer.addSublayer(gradientLayer)
    }
    
    @IBAction func shapeChange(_ sender: UISlider) {
        totoroImageView.clipsToBounds = true
        totoroImageView.layer.cornerRadius = CGFloat(cornerRadiusSlider.value)
        mainView.layer.cornerRadius = CGFloat(cornerRadiusSlider.value)
    }
    
    @IBAction func shadowChange(_ sender: UISlider) {
        mainView.layer.masksToBounds = false
        mainView.layer.shadowColor = UIColor.darkGray.cgColor //陰影的顏色
        mainView.layer.shadowOffset = CGSize(width: 1, height: 1)//陰影位置
        mainView.layer.shadowOpacity = 0.5//陰影透明度
        mainView.layer.shadowRadius = CGFloat(shadowSlider.value)//擴散程度
    }
    @IBAction func ratioColorChange(_ sender: Any) {
        topRedSlider.value = Float.random(in: 0...1)
        topGreenSlider.value = Float.random(in: 0...1)
        topBlueSlider.value = Float.random(in: 0...1)
        topAlphaSlider.value = Float.random(in: 0...1)
        bottomRedSlider.value = Float.random(in: 0...1)
        bottomGreenSlider.value = Float.random(in: 0...1)
        bottomBlueSlider.value = Float.random(in: 0...1)
        bottomAlphaSlider.value = Float.random(in: 0...1)
        gradientMiddleSlider.value = Float.random(in: 0...1)
        
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [CGColor(red: CGFloat(topRedSlider.value), green: CGFloat(topGreenSlider.value), blue: CGFloat(topBlueSlider.value), alpha: CGFloat(topAlphaSlider.value)),CGColor(red: CGFloat(bottomRedSlider.value), green: CGFloat(bottomGreenSlider.value), blue: CGFloat(bottomBlueSlider.value), alpha: CGFloat(bottomAlphaSlider.value))]
        gradientLayer.locations = [0, NSNumber(value: gradientMiddleSlider.value) , 1]
        gradientView.layer.addSublayer(gradientLayer)
        
    }
    

}

