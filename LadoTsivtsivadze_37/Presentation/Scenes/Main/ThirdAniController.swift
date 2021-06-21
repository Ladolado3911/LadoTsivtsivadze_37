//
//  ThirdAniController.swift
//  LadoTsivtsivadze_37
//
//  Created by Ladolado3911 on 6/21/21.
//

import UIKit

class ThirdAniController: UIViewController {
    
    
    private var imgView: UIImageView = {
        let frame = CGRect(x: (UIScreen.main.bounds.width / 2) - 90,
                           y: (UIScreen.main.bounds.height / 2) - 150,
                           width: 180,
                           height: 300)
        
        let imgView = UIImageView(frame: frame)
        //imgView.backgroundColor = .green
        imgView.image = UIImage(named: "york")
        imgView.clipsToBounds = true
        imgView.contentMode = .scaleAspectFill
        imgView.layer.cornerRadius = 5
        return imgView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imgView)
        imgView.isUserInteractionEnabled = true
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction))
        swipeUp.direction = .up
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction))
        swipeDown.direction = .down
        
        imgView.addGestureRecognizer(swipeUp)
        imgView.addGestureRecognizer(swipeDown)
    }
    
    @objc func swipeAction(gesture: UISwipeGestureRecognizer) {
        switch gesture.direction {
        case .up:
            print("up")
            UIView.animate(withDuration: 0.2) {
                let newFrame = CGRect(x: 0,
                                      y: 0,
                                      width: UIScreen.main.bounds.width,
                                      height: self.imgView.frame.maxY)
                
                self.imgView.frame = newFrame
            }
        case .down:
            print("down")
            UIView.animate(withDuration: 0.2) {
                let newFrame = CGRect(x: (UIScreen.main.bounds.width / 2) - 90,
                                   y: (UIScreen.main.bounds.height / 2) - 150,
                                   width: 180,
                                   height: 300)
                
                self.imgView.frame = newFrame
            }
        default:
            break
        }
    }
    
}
