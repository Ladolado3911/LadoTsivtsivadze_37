//
//  SecondAniController.swift
//  LadoTsivtsivadze_37
//
//  Created by Ladolado3911 on 6/21/21.
//

import UIKit

class SecondAniController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var portraitBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UIDevice.current.orientation.isPortrait {
            //testLabel.isHidden = true
        }
        else {
            //testLabel.isHidden = false
        }


    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        
        if UIDevice.current.orientation.isLandscape {
            print("Landscape")

            UIView.animateKeyframes(withDuration: 1, delay: 0, options: .allowUserInteraction) {
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5) {
                    self.headlineLabel.layer.opacity = 0.0
                    self.portraitBtn.layer.opacity = 0.0
                }
                UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5) {
                    <#code#>
                }
        
            } completion: { (success) in
                
            }

            
            
        }
        else {
            print("Portrait")
            UIView.animate(withDuration: 1) { [weak self] in
                guard let self = self else { return }
                self.headlineLabel.layer.opacity = 1.0
                self.portraitBtn.layer.opacity = 1.0
                //self.testLabel.layer.opacity = 0.0
            }
        }
    }
}
