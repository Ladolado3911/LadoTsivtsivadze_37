//
//  FourthAniController.swift
//  LadoTsivtsivadze_37
//
//  Created by Ladolado3911 on 6/21/21.
//

import UIKit

class FourthAniController: UIViewController {
    
    private var greenBox: UIView = {
        let frame = CGRect(x: CenterPoints.x - 35,
                           y: CenterPoints.y - 35,
                           width: 70,
                           height: 70)
        
        let view = UIView(frame: frame)
        view.backgroundColor = .green
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(greenBox)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateKeyframes(withDuration: 3, delay: 0, options: [.repeat]) { [weak self] in
            guard let self = self else { return }
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.1) {
                self.greenBox.frame = CGRect(x: CenterPoints.x - 35,
                                             y: self.view.frame.maxY - 115,
                                             width: 70,
                                             height: 70)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.1) {
                self.greenBox.frame = CGRect(x: self.view.frame.maxX - 70,
                                             y: CenterPoints.y - 70,
                                             width: 70,
                                             height: 70)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.6, relativeDuration: 0.8) {
                self.greenBox.frame = CGRect(x: CenterPoints.x - 35,
                                             y: CenterPoints.y - 70,
                                             width: 70,
                                             height: 70)
            }
        } completion: { (success) in
            
        }

    }
}
