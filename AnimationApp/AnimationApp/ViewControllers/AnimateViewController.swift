//
//  ViewController.swift
//  AnimationApp
//
//  Created by Тадевос Курдоглян on 04.08.2021.
//

import Spring

class AnimateViewController: UIViewController {
    
    @IBOutlet weak var animateView: SpringView!
    @IBOutlet weak var animateLabel: UILabel!
    @IBOutlet weak var animateButton: SpringButton!
    
    private var newAnimation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animateButton.setTitle("\(newAnimation.animationPreset)", for: .normal)
        
    }
    @IBAction func animateButtonPressed(_ sender: SpringButton) {
        
        animateLabel.text = "Preset: \(newAnimation.animationPreset) \nCurve: \(self.newAnimation.curve) \nDuration: \(newAnimation.duration)"
        
        animateView.animation = "\(newAnimation.animationPreset)"
        animateView.curve = "\(newAnimation.curve)"
        animateView.duration = CGFloat(newAnimation.duration)
        
        animateView.animate()
        animateView.animateNext {
            self.newAnimation = Animation.getAnimation()
            sender.setTitle("\(self.newAnimation.animationPreset)", for: .normal)
        }
        
        let buttonAnimation = Animation(animationPreset: .fadeInRight, curve: .easeInOutQuad, duration: 1.5)
        
        sender.animation = "\(buttonAnimation.animationPreset)"
        sender.curve = "\(buttonAnimation.curve)"
        sender.duration = CGFloat(buttonAnimation.duration)
        
        sender.animate()
    }
}

