//
//  PlatView.swift
//  MonRestoDuMonde
//
//  Created by Marame on 14/10/2018.
//  Copyright © 2018 Gueye Gora. All rights reserved.
//

import UIKit

class PlatView: UIView {

    var typeDePlat: UILabel?
    var imageDuPlat: UIImageView?
    var descriptionDuplat: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func miseEnPlace(plat: Plat){
        
        typeDePlat = UILabel(frame: CGRect(x: 20, y: 0, width: frame.width-40, height: 50))
        typeDePlat?.text = convertirTypeEnPlat(type: plat.type)
        typeDePlat?.textAlignment = .left
        typeDePlat?.font = FONT_DE_BASE
        typeDePlat?.textColor = GRIS_TRES_CLAIRE
        guard typeDePlat != nil else{ return }  // juste par précaution
        addSubview(typeDePlat!)
        var maxY = typeDePlat!.frame.maxY
        
        imageDuPlat = UIImageView(frame: CGRect(x: 0, y: maxY, width: frame.width, height: 200))
        imageDuPlat?.image = plat.image
        imageDuPlat?.contentMode = .scaleAspectFill
        imageDuPlat?.clipsToBounds = true
        guard imageDuPlat != nil else { return }
        addSubview(imageDuPlat!)
        maxY = imageDuPlat!.frame.maxY
        
        descriptionDuplat = UILabel(frame: CGRect(x: 20, y: maxY, width: frame.width-40, height: 100))
        descriptionDuplat?.numberOfLines = 0
        descriptionDuplat?.text = plat.desc
        descriptionDuplat?.font = FONT_DE_BASE
        descriptionDuplat?.textColor = GRIS_TRES_CLAIRE
        descriptionDuplat?.textAlignment = .center
        guard descriptionDuplat != nil else { return }
        addSubview(descriptionDuplat!)
    }
    
    func convertirTypeEnPlat(type: Type) -> String {
        switch type {
        case .entree : return "Entree"
        case .platPrincipal : return "Plat principal"
        case .dessert: return "Dessert"
        }
    }
    
}
