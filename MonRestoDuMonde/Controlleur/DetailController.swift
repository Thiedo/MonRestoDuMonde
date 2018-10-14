//
//  DetailController.swift
//  MonRestoDuMonde
//
//  Created by Marame on 14/10/2018.
//  Copyright © 2018 Gueye Gora. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    var menu: Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(Degrade())
        view.bringSubview(toFront: scroll) // on fait ceci pour ne pas avoir le layer au dessus de notre scroll ( on ramene le scroll au au prmier plan
        guard menu != nil else {return}
        miseEnPlace(menu: menu!)
    }
    
    func miseEnPlace(menu: Menu){
        let imageDuMenu = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 250))
        
        imageDuMenu.image = menu.image
        imageDuMenu.contentMode = .scaleAspectFill
        imageDuMenu.clipsToBounds = true
        scroll.addSubview(imageDuMenu)
        var maxY = imageDuMenu.frame.maxY
        
        let nomDuMenu = UILabel(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 100))
        nomDuMenu.text = "Menu " + menu.pays
        nomDuMenu.font = FONT_TITRE
        nomDuMenu.textColor = .red
        nomDuMenu.adjustsFontSizeToFitWidth = true
        nomDuMenu.textAlignment = .center
        scroll.addSubview(nomDuMenu)
        maxY = nomDuMenu.frame.maxY
        
        for plat in menu.plats{
            let vue = PlatView(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 375))
            vue.miseEnPlace(plat: plat)
            scroll.addSubview(vue)
            maxY = vue.frame.maxY
        }
        
        scroll.contentSize = CGSize(width: view.frame.width, height: maxY+50)
        
    }

}
