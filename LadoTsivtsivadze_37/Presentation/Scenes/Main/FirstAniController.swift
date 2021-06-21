//
//  ViewController.swift
//  LadoTsivtsivadze_37
//
//  Created by Ladolado3911 on 6/21/21.
//

import UIKit

struct CenterPoints {
    static var x: CGFloat = (UIScreen.main.bounds.width / 2)
    static var y: CGFloat = (UIScreen.main.bounds.height / 2)
}

class FirstAniController: UIViewController {
    
    private var blueBox: UIView = {
        let frame = CGRect(x: CenterPoints.x - 75,
                           y: CenterPoints.y - 75,
                           width: 150,
                           height: 150)
        let box = UIView(frame: frame)
        box.layer.cornerRadius = 20
        box.backgroundColor = .blue
        box.isHidden = true
        return box
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(blueBox)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    @IBAction func onAnimate(_ sender: Any) {
        blueBox.isHidden = false
        UIView.animateKeyframes(withDuration: 0.5, delay: 1, options: .allowUserInteraction) { [weak self] in
            guard let self = self else { return }
            self.blueBox.frame = CGRect(x: self.view.center.x, y: self.view.center.y, width: 0, height: 0)
            self.blueBox.alpha = 0.0
            
        } completion: { (success) in
            self.blueBox.isHidden = true
        }
    }
}

