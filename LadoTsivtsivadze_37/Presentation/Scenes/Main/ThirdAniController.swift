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
    
    private var textView: UITextView = {
        let y = (UIScreen.main.bounds.height / 2) + 150
        let screenHeight = UIScreen.main.bounds.height
        let frame = CGRect(x: 0,
                           y: y,
                           width: UIScreen.main.bounds.width,
                           height: (screenHeight - y) - 45)
        
        let textView = UITextView(frame: frame)
        textView.text = "New York City (NYC), often simply called New York, is the most populous city in the United States. With an estimated 2019 population of 8,336,817 distributed over about 302.6 square miles (784 km2), New York City is also the most densely populated major city in the United States.11"
        textView.alpha = 0.0
        return textView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imgView)
        view.addSubview(textView)
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
            UIView.animate(withDuration: 0.2) { [weak self] in
                guard let self = self else { return }
                let y = (UIScreen.main.bounds.height / 2) + 150
                let screenHeight = UIScreen.main.bounds.height
                
                let newFrame = CGRect(x: 0,
                                      y: 0,
                                      width: UIScreen.main.bounds.width,
                                      height: self.imgView.frame.maxY)
                
                let txtViewFrame = CGRect(x: 0,
                                          y: y,
                                          width: UIScreen.main.bounds.width,
                                          height: (screenHeight - y) - 45)
                
                self.imgView.frame = newFrame
                self.textView.frame = txtViewFrame
                self.textView.alpha = 1
            }
        case .down:
            print("down")
            UIView.animate(withDuration: 0.2) { [weak self] in
                guard let self = self else { return }
                let newFrame = CGRect(x: (UIScreen.main.bounds.width / 2) - 90,
                                   y: (UIScreen.main.bounds.height / 2) - 150,
                                   width: 180,
                                   height: 300)
                
                let txtViewFrame = CGRect(x: (UIScreen.main.bounds.width / 2) - 90,
                                          y: <#T##CGFloat#>,
                                          width: 180,
                                          height: <#T##CGFloat#>)
                
                self.imgView.frame = newFrame
                self.textView.alpha = 0
            }
        default:
            break
        }
    }
    
}
