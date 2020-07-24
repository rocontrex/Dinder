//
//  CombineViewController.swift
//  Dinger
//
//  Created by Rodrigo Conte on 23/07/20.
//  Copyright © 2020 Rodrigo Conte. All rights reserved.
//

import UIKit

class CombineViewController: UIViewController {
    
    var users: Array<User> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.systemGroupedBackground
        
        self.getUsers()
        
    }
    
    func getUsers(){
        self.users = UserService.shared.getUsers()
        self.addCard()
    }
}

extension CombineViewController {
    func addCard() {
        
        for user in users {
            let cardView = CombineCardView()
            cardView.frame = CGRect(x: 0, y: 0, width: view.bounds.width - 32, height: view.bounds.height * 0.7)
            
            cardView.center = view.center
            
            cardView.user = user
            cardView.tag = user.id
            
            let gesture = UIPanGestureRecognizer()
            gesture.addTarget(self, action: #selector(handleCard))
            cardView.addGestureRecognizer(gesture)
            
            view.insertSubview(cardView, at: 0)
        }
    }
}

extension CombineViewController {
    @objc func handleCard( gesture: UIPanGestureRecognizer ){
        if let card = gesture.view {
            let point = gesture.translation(in: view)
            
            card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
            
            let rotationAngle = point.x / view.bounds.width * 0.4
            
            card.transform = CGAffineTransform(rotationAngle: rotationAngle)
            
            
            if gesture.state == .ended {
                UIView.animate(withDuration: 0.2) {
                    card.center = self.view.center
                    card.transform = .identity
                }
            }
        }
    }
}
