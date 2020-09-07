//
//  ViewController.swift
//  Colors
//
//  Created by 郭冠杰 on 2020/8/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var g1View: UIView!
    
    @IBOutlet weak var o1View: UIView!
    
    @IBOutlet weak var o2View: UIView!
    
    @IBOutlet weak var g2View: UIView!
    
    @IBOutlet weak var lView: UIView!
    
    @IBOutlet weak var eView: UIView!
    
    
    @IBOutlet weak var g1RedSlider: UISlider!
    
    @IBOutlet weak var g1GreenSlider: UISlider!
    
    @IBOutlet weak var g1BlueSlider: UISlider!
    
    @IBOutlet weak var g1RedValue: UILabel!
    
    @IBOutlet weak var g1GreenValue: UILabel!
    
    @IBOutlet weak var g1BlueValue: UILabel!
    
    
    
    @IBOutlet weak var o1RedSlider: UISlider!
    
    @IBOutlet weak var o1GreenSlider: UISlider!
    
    @IBOutlet weak var o1BlueSlider: UISlider!
    
    @IBOutlet weak var o1RedValue: UILabel!
    
    @IBOutlet weak var o1GreenValue: UILabel!
    
    @IBOutlet weak var o1BlueValue: UILabel!
    
    
    
    @IBOutlet weak var o2RedSlider: UISlider!
    
    @IBOutlet weak var o2GreenSlider: UISlider!
    
    @IBOutlet weak var o2BlueSlider: UISlider!
    
    @IBOutlet weak var o2RedValue: UILabel!
    
    @IBOutlet weak var o2GreenValue: UILabel!
    
    @IBOutlet weak var o2BlueValue: UILabel!
    
    
    @IBOutlet weak var g2RedSlider: UISlider!
    
    @IBOutlet weak var g2GreenSlider: UISlider!
    
    @IBOutlet weak var g2BlueSlider: UISlider!
    
    @IBOutlet weak var g2RedValue: UILabel!
    
    @IBOutlet weak var g2GreenValue: UILabel!
    
    @IBOutlet weak var g2BlueValue: UILabel!
    
    
    
    @IBOutlet weak var lRedSlider: UISlider!
    
    @IBOutlet weak var lGreenSlider: UISlider!
    
    @IBOutlet weak var lBlueSlider: UISlider!
    
    @IBOutlet weak var lRedValue: UILabel!
    
    @IBOutlet weak var lGreenValue: UILabel!
    
    @IBOutlet weak var lBlueValue: UILabel!
    
    
    
    @IBOutlet weak var eRedSlider: UISlider!
    
    @IBOutlet weak var eGreenSlider: UISlider!
    
    @IBOutlet weak var eBlueSlider: UISlider!
    
    @IBOutlet weak var eRedValue: UILabel!
    
    @IBOutlet weak var eGreenValue: UILabel!
    
    @IBOutlet weak var eBlueValue: UILabel!
    
    @IBOutlet weak var gradientSlider: UISlider!
    
    @IBOutlet weak var gradientSwitch: UISwitch!
    
    let g1GradientLayer = CAGradientLayer()
    let o1GradientLayer = CAGradientLayer()
    let o2GradientLayer = CAGradientLayer()
    let g2GradientLayer = CAGradientLayer()
    let lGradientLayer = CAGradientLayer()
    let eGradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        gradientSlider.isEnabled = false
        
        let g1ImageView = UIImageView(image: UIImage(named: "g1"))
        
        g1ImageView.frame = g1View.bounds
        
        g1ImageView.contentMode = .scaleAspectFit
        
        g1View.mask = g1ImageView
        
        g1View.backgroundColor = UIColor(red: 80/255, green: 135/255, blue: 236/255, alpha: 1)
        
        
        
        let o1ImageView = UIImageView(image: UIImage(named: "o1"))
        
        o1ImageView.frame = o1View.bounds
        
        o1ImageView.contentMode = .scaleAspectFit
        
        o1View.mask = o1ImageView
        
        o1View.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        
        
        
        let o2ImageView = UIImageView(image: UIImage(named: "o2"))
        
        o2ImageView.frame = o2View.bounds
        
        o2ImageView.contentMode = .scaleAspectFit
        
        o2View.mask = o2ImageView
        
        o2View.backgroundColor = UIColor(red: 242/255, green: 189/255, blue: 66/255, alpha: 1)
        
        
        
        let g2ImageView = UIImageView(image: UIImage(named: "g2"))
        
        g2ImageView.frame = g2View.bounds
        
        g2ImageView.contentMode = .scaleAspectFit
        
        g2View.mask = g2ImageView
        
        g2View.backgroundColor = UIColor(red: 80/255, green: 135/255, blue: 236/255, alpha: 1)
        
        
        
        let lImageView = UIImageView(image: UIImage(named: "l"))
        
        lImageView.frame = lView.bounds
        
        lImageView.contentMode = .scaleAspectFit
        
        lView.mask = lImageView
        
        lView.backgroundColor = UIColor(red: 88/255, green: 164/255, blue: 92/255, alpha: 1)
        
        
        
        let eImageView = UIImageView(image: UIImage(named: "e"))
        
        eImageView.frame = eView.bounds
        
        eImageView.contentMode = .scaleAspectFit
        
        eView.mask = eImageView
        
        eView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
    }
    
    
    
    @IBAction func colorSliderChange(_ sender: Any) {
        
        if gradientSwitch.isOn != true {
            
            g1GradientLayer.removeFromSuperlayer()
            o1GradientLayer.removeFromSuperlayer()
            o2GradientLayer.removeFromSuperlayer()
            g2GradientLayer.removeFromSuperlayer()
            lGradientLayer.removeFromSuperlayer()
            eGradientLayer.removeFromSuperlayer()
            
            g1View.backgroundColor = UIColor(red: CGFloat(g1RedSlider.value), green: CGFloat(g1GreenSlider.value), blue: CGFloat(g1BlueSlider.value), alpha: 1)
            
            g1RedValue.text = String(format: "%.2f", g1RedSlider.value)
            
            g1GreenValue.text = String(format: "%.2f", g1GreenSlider.value)
            
            g1BlueValue.text = String(format: "%.2f", g1BlueSlider.value)
            
            
            
            o1View.backgroundColor = UIColor(red: CGFloat(o1RedSlider.value), green: CGFloat(o1GreenSlider.value), blue: CGFloat(o1BlueSlider.value), alpha: 1)
            
            o1RedValue.text = String(format: "%.2f", o1RedSlider.value)
            
            o1GreenValue.text = String(format: "%.2f", o1GreenSlider.value)
            
            o1BlueValue.text = String(format: "%.2f", o1BlueSlider.value)
            
            
            
            o2View.backgroundColor = UIColor(red: CGFloat(o2RedSlider.value), green: CGFloat(o2GreenSlider.value), blue: CGFloat(o2BlueSlider.value), alpha: 1)
            
            o2RedValue.text = String(format: "%.2f", o2RedSlider.value)
            
            o2GreenValue.text = String(format: "%.2f", o2GreenSlider.value)
            
            o2BlueValue.text = String(format: "%.2f", o2BlueSlider.value)
            
            
            
            g2View.backgroundColor = UIColor(red: CGFloat(g2RedSlider.value), green: CGFloat(g2GreenSlider.value), blue: CGFloat(g2BlueSlider.value), alpha: 1)
            
            g2RedValue.text = String(format: "%.2f", g2RedSlider.value)
            
            g2GreenValue.text = String(format: "%.2f", g2GreenSlider.value)
            
            g2BlueValue.text = String(format: "%.2f", g2BlueSlider.value)
            
            
            
            lView.backgroundColor = UIColor(red: CGFloat(lRedSlider.value), green: CGFloat(lGreenSlider.value), blue: CGFloat(lBlueSlider.value), alpha: 1)
            
            lRedValue.text = String(format: "%.2f", lRedSlider.value)
            
            lGreenValue.text = String(format: "%.2f", lGreenSlider.value)
            
            lBlueValue.text = String(format: "%.2f", lBlueSlider.value)
            
            
            
            eView.backgroundColor = UIColor(red: CGFloat(eRedSlider.value), green: CGFloat(eGreenSlider.value), blue: CGFloat(eBlueSlider.value), alpha: 1)
            
            eRedValue.text = String(format: "%.2f", eRedSlider.value)
            
            eGreenValue.text = String(format: "%.2f", eGreenSlider.value)
            
            eBlueValue.text = String(format: "%.2f", eBlueSlider.value)
            
        } else {
            
            g1View.backgroundColor = UIColor(red: CGFloat(g1RedSlider.value), green: CGFloat(g1GreenSlider.value), blue: CGFloat(g1BlueSlider.value), alpha: 0)
            
            o1View.backgroundColor = UIColor(red: CGFloat(o1RedSlider.value), green: CGFloat(o1GreenSlider.value), blue: CGFloat(o1BlueSlider.value), alpha: 0)
            
            o2View.backgroundColor = UIColor(red: CGFloat(o2RedSlider.value), green: CGFloat(o2GreenSlider.value), blue: CGFloat(o2BlueSlider.value), alpha: 0)
            
            g2View.backgroundColor = UIColor(red: CGFloat(g2RedSlider.value), green: CGFloat(g2GreenSlider.value), blue: CGFloat(g2BlueSlider.value), alpha: 0)
            
            lView.backgroundColor = UIColor(red: CGFloat(lRedSlider.value), green: CGFloat(lGreenSlider.value), blue: CGFloat(lBlueSlider.value), alpha: 0)
            
            eView.backgroundColor = UIColor(red: CGFloat(eRedSlider.value), green: CGFloat(eGreenSlider.value), blue: CGFloat(eBlueSlider.value), alpha: 0)
            
            
            
            g1GradientLayer.frame = g1View.bounds
            g1GradientLayer.colors = [CGColor(red: CGFloat(g1RedSlider.value), green: CGFloat(g1GreenSlider.value), blue: CGFloat(g1BlueSlider.value), alpha: 1), CGColor(red: CGFloat(o1RedSlider.value), green: CGFloat(o1GreenSlider.value), blue: CGFloat(o1BlueSlider.value), alpha: 1)]
            g1GradientLayer.locations = [0, NSNumber(value: gradientSlider.value)]
            g1View.layer.addSublayer(g1GradientLayer)
            
            
            
            o1GradientLayer.frame = o1View.bounds
            o1GradientLayer.colors = [CGColor(red: CGFloat(o1RedSlider.value), green: CGFloat(o1GreenSlider.value), blue: CGFloat(o1BlueSlider.value), alpha: 1), CGColor(red: CGFloat(o2RedSlider.value), green: CGFloat(o2GreenSlider.value), blue: CGFloat(o2BlueSlider.value), alpha: 1)]
            o1GradientLayer.locations = [0, NSNumber(value: gradientSlider.value)]
            o1View.layer.addSublayer(o1GradientLayer)
            
            
            
            o2GradientLayer.frame = o2View.bounds
            o2GradientLayer.colors = [CGColor(red: CGFloat(o2RedSlider.value), green: CGFloat(o2GreenSlider.value), blue: CGFloat(o2BlueSlider.value), alpha: 1), CGColor(red: CGFloat(g2RedSlider.value), green: CGFloat(g2GreenSlider.value), blue: CGFloat(g2BlueSlider.value), alpha: 1)]
            o2GradientLayer.locations = [0, NSNumber(value: gradientSlider.value)]
            o2View.layer.addSublayer(o2GradientLayer)
            
            
            
            g2GradientLayer.frame = g2View.bounds
            g2GradientLayer.colors = [CGColor(red: CGFloat(g2RedSlider.value), green: CGFloat(g2GreenSlider.value), blue: CGFloat(g2BlueSlider.value), alpha: 1), CGColor(red: CGFloat(lRedSlider.value), green: CGFloat(lGreenSlider.value), blue: CGFloat(lBlueSlider.value), alpha: 1)]
            g2GradientLayer.locations = [0, NSNumber(value: gradientSlider.value)]
            g2View.layer.addSublayer(g2GradientLayer)
            
            
            
            lGradientLayer.frame = lView.bounds
            lGradientLayer.colors = [CGColor(red: CGFloat(lRedSlider.value), green: CGFloat(lGreenSlider.value), blue: CGFloat(lBlueSlider.value), alpha: 1), CGColor(red: CGFloat(eRedSlider.value), green: CGFloat(eGreenSlider.value), blue: CGFloat(eBlueSlider.value), alpha: 1)]
            lGradientLayer.locations = [0, NSNumber(value: gradientSlider.value)]
            lView.layer.addSublayer(lGradientLayer)
            
            
            
            eGradientLayer.frame = eView.bounds
            eGradientLayer.colors = [CGColor(red: CGFloat(eRedSlider.value), green: CGFloat(eGreenSlider.value), blue: CGFloat(eBlueSlider.value), alpha: 1), CGColor(red: CGFloat(g1RedSlider.value), green: CGFloat(g1GreenSlider.value), blue: CGFloat(g1BlueSlider.value), alpha: 1)]
            eGradientLayer.locations = [0, NSNumber(value: gradientSlider.value)]
            eView.layer.addSublayer(eGradientLayer)
        }
        
        
    }
    
    @IBAction func Random(_ sender: Any) {
        
        g1RedSlider.value = Float.random(in: 0...1)
        
        g1GreenSlider.value = Float.random(in: 0...1)
        
        g1BlueSlider.value = Float.random(in: 0...1)
        
        o1RedSlider.value = Float.random(in: 0...1)
        
        o1GreenSlider.value = Float.random(in: 0...1)
        
        o1BlueSlider.value = Float.random(in: 0...1)
        
        o2RedSlider.value = Float.random(in: 0...1)
        
        o2GreenSlider.value = Float.random(in: 0...1)
        
        o2BlueSlider.value = Float.random(in: 0...1)
        
        g2RedSlider.value = Float.random(in: 0...1)
        
        g2GreenSlider.value = Float.random(in: 0...1)
        
        g2BlueSlider.value = Float.random(in: 0...1)
        
        lRedSlider.value = Float.random(in: 0...1)
        
        lGreenSlider.value = Float.random(in: 0...1)
        
        lBlueSlider.value = Float.random(in: 0...1)
        
        eRedSlider.value = Float.random(in: 0...1)
        
        eGreenSlider.value = Float.random(in: 0...1)
        
        eBlueSlider.value = Float.random(in: 0...1)
        
        if gradientSwitch.isOn != true {
            
            g1View.backgroundColor = UIColor(red: CGFloat(g1RedSlider.value), green: CGFloat(g1GreenSlider.value), blue: CGFloat(g1BlueSlider.value), alpha: 1)
            
            g1RedValue.text = String(format: "%.2f", g1RedSlider.value)
            
            g1GreenValue.text = String(format: "%.2f", g1GreenSlider.value)
            
            g1BlueValue.text = String(format: "%.2f", g1BlueSlider.value)
            
            o1View.backgroundColor = UIColor(red: CGFloat(o1RedSlider.value), green: CGFloat(o1GreenSlider.value), blue: CGFloat(o1BlueSlider.value), alpha: 1)
            
            o1RedValue.text = String(format: "%.2f", o1RedSlider.value)
            
            o1GreenValue.text = String(format: "%.2f", o1GreenSlider.value)
            
            o1BlueValue.text = String(format: "%.2f", o1BlueSlider.value)
            
            o2View.backgroundColor = UIColor(red: CGFloat(o2RedSlider.value), green: CGFloat(o2GreenSlider.value), blue: CGFloat(o2BlueSlider.value), alpha: 1)
            
            o2RedValue.text = String(format: "%.2f", o2RedSlider.value)
            
            o2GreenValue.text = String(format: "%.2f", o2GreenSlider.value)
            
            o2BlueValue.text = String(format: "%.2f", o2BlueSlider.value)
            
            g2View.backgroundColor = UIColor(red: CGFloat(g2RedSlider.value), green: CGFloat(g2GreenSlider.value), blue: CGFloat(g2BlueSlider.value), alpha: 1)
            
            g2RedValue.text = String(format: "%.2f", g2RedSlider.value)
            
            g2GreenValue.text = String(format: "%.2f", g2GreenSlider.value)
            
            g2BlueValue.text = String(format: "%.2f", g2BlueSlider.value)
            
            lView.backgroundColor = UIColor(red: CGFloat(lRedSlider.value), green: CGFloat(lGreenSlider.value), blue: CGFloat(lBlueSlider.value), alpha: 1)
            
            lRedValue.text = String(format: "%.2f", lRedSlider.value)
            
            lGreenValue.text = String(format: "%.2f", lGreenSlider.value)
            
            lBlueValue.text = String(format: "%.2f", lBlueSlider.value)
            
            eView.backgroundColor = UIColor(red: CGFloat(eRedSlider.value), green: CGFloat(eGreenSlider.value), blue: CGFloat(eBlueSlider.value), alpha: 1)
            
            eRedValue.text = String(format: "%.2f", eRedSlider.value)
            
            eGreenValue.text = String(format: "%.2f", eGreenSlider.value)
            
            eBlueValue.text = String(format: "%.2f", eBlueSlider.value)
        } else {
            
            g1View.backgroundColor = UIColor(red: CGFloat(g1RedSlider.value), green: CGFloat(g1GreenSlider.value), blue: CGFloat(g1BlueSlider.value), alpha: 0)
            
            o1View.backgroundColor = UIColor(red: CGFloat(o1RedSlider.value), green: CGFloat(o1GreenSlider.value), blue: CGFloat(o1BlueSlider.value), alpha: 0)
            
            o2View.backgroundColor = UIColor(red: CGFloat(o2RedSlider.value), green: CGFloat(o2GreenSlider.value), blue: CGFloat(o2BlueSlider.value), alpha: 0)
            
            g2View.backgroundColor = UIColor(red: CGFloat(g2RedSlider.value), green: CGFloat(g2GreenSlider.value), blue: CGFloat(g2BlueSlider.value), alpha: 0)
            
            lView.backgroundColor = UIColor(red: CGFloat(lRedSlider.value), green: CGFloat(lGreenSlider.value), blue: CGFloat(lBlueSlider.value), alpha: 0)
            
            eView.backgroundColor = UIColor(red: CGFloat(eRedSlider.value), green: CGFloat(eGreenSlider.value), blue: CGFloat(eBlueSlider.value), alpha: 0)
            
            
            g1GradientLayer.frame = g1View.bounds
            g1GradientLayer.colors = [CGColor(red: CGFloat(g1RedSlider.value), green: CGFloat(g1GreenSlider.value), blue: CGFloat(g1BlueSlider.value), alpha: 1), CGColor(red: CGFloat(o1RedSlider.value), green: CGFloat(o1GreenSlider.value), blue: CGFloat(o1BlueSlider.value), alpha: 1)]
            g1View.layer.addSublayer(g1GradientLayer)
            
            
            
            o1GradientLayer.frame = o1View.bounds
            o1GradientLayer.colors = [CGColor(red: CGFloat(o1RedSlider.value), green: CGFloat(o1GreenSlider.value), blue: CGFloat(o1BlueSlider.value), alpha: 1), CGColor(red: CGFloat(o2RedSlider.value), green: CGFloat(o2GreenSlider.value), blue: CGFloat(o2BlueSlider.value), alpha: 1)]
            o1View.layer.addSublayer(o1GradientLayer)
            
            
            
            o2GradientLayer.frame = o2View.bounds
            o2GradientLayer.colors = [CGColor(red: CGFloat(o2RedSlider.value), green: CGFloat(o2GreenSlider.value), blue: CGFloat(o2BlueSlider.value), alpha: 1), CGColor(red: CGFloat(g2RedSlider.value), green: CGFloat(g2GreenSlider.value), blue: CGFloat(g2BlueSlider.value), alpha: 1)]
            o2View.layer.addSublayer(o2GradientLayer)
            
            
            
            g2GradientLayer.frame = g2View.bounds
            g2GradientLayer.colors = [CGColor(red: CGFloat(g2RedSlider.value), green: CGFloat(g2GreenSlider.value), blue: CGFloat(g2BlueSlider.value), alpha: 1), CGColor(red: CGFloat(lRedSlider.value), green: CGFloat(lGreenSlider.value), blue: CGFloat(lBlueSlider.value), alpha: 1)]
            g2View.layer.addSublayer(g2GradientLayer)
            
            
            
            lGradientLayer.frame = lView.bounds
            lGradientLayer.colors = [CGColor(red: CGFloat(lRedSlider.value), green: CGFloat(lGreenSlider.value), blue: CGFloat(lBlueSlider.value), alpha: 1), CGColor(red: CGFloat(eRedSlider.value), green: CGFloat(eGreenSlider.value), blue: CGFloat(eBlueSlider.value), alpha: 1)]
            lView.layer.addSublayer(lGradientLayer)
            
            
            
            eGradientLayer.frame = eView.bounds
            eGradientLayer.colors = [CGColor(red: CGFloat(eRedSlider.value), green: CGFloat(eGreenSlider.value), blue: CGFloat(eBlueSlider.value), alpha: 1), CGColor(red: CGFloat(g1RedSlider.value), green: CGFloat(g1GreenSlider.value), blue: CGFloat(g1BlueSlider.value), alpha: 1)]
            eView.layer.addSublayer(eGradientLayer)
            
        }
    }
    
    
    @IBAction func gradientButton(_ sender: Any) {
        
        if gradientSwitch.isOn != true {
            
            gradientSlider.isEnabled = false
            
            g1GradientLayer.removeFromSuperlayer()
            o1GradientLayer.removeFromSuperlayer()
            o2GradientLayer.removeFromSuperlayer()
            g2GradientLayer.removeFromSuperlayer()
            lGradientLayer.removeFromSuperlayer()
            eGradientLayer.removeFromSuperlayer()
            
            g1View.backgroundColor = UIColor(red: CGFloat(g1RedSlider.value), green: CGFloat(g1GreenSlider.value), blue: CGFloat(g1BlueSlider.value), alpha: 1)
            
            g1RedValue.text = String(format: "%.2f", g1RedSlider.value)
            
            g1GreenValue.text = String(format: "%.2f", g1GreenSlider.value)
            
            g1BlueValue.text = String(format: "%.2f", g1BlueSlider.value)
            
            
            
            o1View.backgroundColor = UIColor(red: CGFloat(o1RedSlider.value), green: CGFloat(o1GreenSlider.value), blue: CGFloat(o1BlueSlider.value), alpha: 1)
            
            o1RedValue.text = String(format: "%.2f", o1RedSlider.value)
            
            o1GreenValue.text = String(format: "%.2f", o1GreenSlider.value)
            
            o1BlueValue.text = String(format: "%.2f", o1BlueSlider.value)
            
            
            
            o2View.backgroundColor = UIColor(red: CGFloat(o2RedSlider.value), green: CGFloat(o2GreenSlider.value), blue: CGFloat(o2BlueSlider.value), alpha: 1)
            
            o2RedValue.text = String(format: "%.2f", o2RedSlider.value)
            
            o2GreenValue.text = String(format: "%.2f", o2GreenSlider.value)
            
            o2BlueValue.text = String(format: "%.2f", o2BlueSlider.value)
            
            
            
            g2View.backgroundColor = UIColor(red: CGFloat(g2RedSlider.value), green: CGFloat(g2GreenSlider.value), blue: CGFloat(g2BlueSlider.value), alpha: 1)
            
            g2RedValue.text = String(format: "%.2f", g2RedSlider.value)
            
            g2GreenValue.text = String(format: "%.2f", g2GreenSlider.value)
            
            g2BlueValue.text = String(format: "%.2f", g2BlueSlider.value)
            
            
            
            lView.backgroundColor = UIColor(red: CGFloat(lRedSlider.value), green: CGFloat(lGreenSlider.value), blue: CGFloat(lBlueSlider.value), alpha: 1)
            
            lRedValue.text = String(format: "%.2f", lRedSlider.value)
            
            lGreenValue.text = String(format: "%.2f", lGreenSlider.value)
            
            lBlueValue.text = String(format: "%.2f", lBlueSlider.value)
            
            
            
            eView.backgroundColor = UIColor(red: CGFloat(eRedSlider.value), green: CGFloat(eGreenSlider.value), blue: CGFloat(eBlueSlider.value), alpha: 1)
            
            eRedValue.text = String(format: "%.2f", eRedSlider.value)
            
            eGreenValue.text = String(format: "%.2f", eGreenSlider.value)
            
            eBlueValue.text = String(format: "%.2f", eBlueSlider.value)
            
        } else {
            
            gradientSlider.isEnabled = true
            
            g1View.backgroundColor = UIColor(red: CGFloat(g1RedSlider.value), green: CGFloat(g1GreenSlider.value), blue: CGFloat(g1BlueSlider.value), alpha: 0)
            
            o1View.backgroundColor = UIColor(red: CGFloat(o1RedSlider.value), green: CGFloat(o1GreenSlider.value), blue: CGFloat(o1BlueSlider.value), alpha: 0)
            
            o2View.backgroundColor = UIColor(red: CGFloat(o2RedSlider.value), green: CGFloat(o2GreenSlider.value), blue: CGFloat(o2BlueSlider.value), alpha: 0)
            
            g2View.backgroundColor = UIColor(red: CGFloat(g2RedSlider.value), green: CGFloat(g2GreenSlider.value), blue: CGFloat(g2BlueSlider.value), alpha: 0)
            
            lView.backgroundColor = UIColor(red: CGFloat(lRedSlider.value), green: CGFloat(lGreenSlider.value), blue: CGFloat(lBlueSlider.value), alpha: 0)
            
            eView.backgroundColor = UIColor(red: CGFloat(eRedSlider.value), green: CGFloat(eGreenSlider.value), blue: CGFloat(eBlueSlider.value), alpha: 0)
            
            
            g1GradientLayer.frame = g1View.bounds
            g1GradientLayer.colors = [CGColor(red: CGFloat(g1RedSlider.value), green: CGFloat(g1GreenSlider.value), blue: CGFloat(g1BlueSlider.value), alpha: 1), CGColor(red: CGFloat(o1RedSlider.value), green: CGFloat(o1GreenSlider.value), blue: CGFloat(o1BlueSlider.value), alpha: 1)]
            g1GradientLayer.locations = [0, NSNumber(value: gradientSlider.value)]
            g1View.layer.addSublayer(g1GradientLayer)
            
            
            
            o1GradientLayer.frame = o1View.bounds
            o1GradientLayer.colors = [CGColor(red: CGFloat(o1RedSlider.value), green: CGFloat(o1GreenSlider.value), blue: CGFloat(o1BlueSlider.value), alpha: 1), CGColor(red: CGFloat(o2RedSlider.value), green: CGFloat(o2GreenSlider.value), blue: CGFloat(o2BlueSlider.value), alpha: 1)]
            o1GradientLayer.locations = [0, NSNumber(value: gradientSlider.value)]
            o1View.layer.addSublayer(o1GradientLayer)
            
            
            
            o2GradientLayer.frame = o2View.bounds
            o2GradientLayer.colors = [CGColor(red: CGFloat(o2RedSlider.value), green: CGFloat(o2GreenSlider.value), blue: CGFloat(o2BlueSlider.value), alpha: 1), CGColor(red: CGFloat(g2RedSlider.value), green: CGFloat(g2GreenSlider.value), blue: CGFloat(g2BlueSlider.value), alpha: 1)]
            o2GradientLayer.locations = [0, NSNumber(value: gradientSlider.value)]
            o2View.layer.addSublayer(o2GradientLayer)
            
            
            
            g2GradientLayer.frame = g2View.bounds
            g2GradientLayer.colors = [CGColor(red: CGFloat(g2RedSlider.value), green: CGFloat(g2GreenSlider.value), blue: CGFloat(g2BlueSlider.value), alpha: 1), CGColor(red: CGFloat(lRedSlider.value), green: CGFloat(lGreenSlider.value), blue: CGFloat(lBlueSlider.value), alpha: 1)]
            g2GradientLayer.locations = [0, NSNumber(value: gradientSlider.value)]
            g2View.layer.addSublayer(g2GradientLayer)
            
            
            
            lGradientLayer.frame = lView.bounds
            lGradientLayer.colors = [CGColor(red: CGFloat(lRedSlider.value), green: CGFloat(lGreenSlider.value), blue: CGFloat(lBlueSlider.value), alpha: 1), CGColor(red: CGFloat(eRedSlider.value), green: CGFloat(eGreenSlider.value), blue: CGFloat(eBlueSlider.value), alpha: 1)]
            lGradientLayer.locations = [0, NSNumber(value: gradientSlider.value)]
            lView.layer.addSublayer(lGradientLayer)
            
            
            
            eGradientLayer.frame = eView.bounds
            eGradientLayer.colors = [CGColor(red: CGFloat(eRedSlider.value), green: CGFloat(eGreenSlider.value), blue: CGFloat(eBlueSlider.value), alpha: 1), CGColor(red: CGFloat(g1RedSlider.value), green: CGFloat(g1GreenSlider.value), blue: CGFloat(g1BlueSlider.value), alpha: 1)]
            eGradientLayer.locations = [0, NSNumber(value: gradientSlider.value)]
            eView.layer.addSublayer(eGradientLayer)

        }
        
    }
   
}

