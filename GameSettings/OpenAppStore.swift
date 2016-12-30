//
//  RateMe.swift
//  Sudoku
//
//  Created by Dev on 22/02/16.
//  Copyright © 2016 LA. All rights reserved.
//

import UIKit
import ParentsGate

struct OpenAppStore {
    
    func openApp(_ vc : UIViewController, link: String)
    {
        if KidsManager.isKids {
            askParens(vc, link: link)
        } else {
            openApp(link)
        }
    }
    
    private func openApp(_ link: String)
    {
        let path = URL(string: link)!
        UIApplication.shared.openURL(path)
    }
    
    private func askParens (_ vc : UIViewController, link: String)
    {
        let kidsView = KidsView.loadFromNib()
        kidsView.frame = vc.view.frame
        vc.view.addSubview(kidsView)
        kidsView.correctAnswerBlock = {
            self.openApp(link)
        }
    }
    
}
