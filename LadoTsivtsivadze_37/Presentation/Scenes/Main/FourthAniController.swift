//
//  FourthAniController.swift
//  LadoTsivtsivadze_37
//
//  Created by Ladolado3911 on 6/21/21.
//

import UIKit

class FourthAniController: UIViewController {
    
    private var greenBox: UIView = {
        let frame = CGRect(x: CenterPoints.x,
                           y: CenterPoints.y,
                           width: 70,
                           height: 70)
        
        let view = UIView(frame: frame)
        view.backgroundColor = .green
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
