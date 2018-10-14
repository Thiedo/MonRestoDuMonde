//
//  PlatCell.swift
//  MonRestoDuMonde
//
//  Created by Marame on 13/10/2018.
//  Copyright © 2018 Gueye Gora. All rights reserved.
//

import UIKit

class PlatCell: UITableViewCell {

    @IBOutlet weak var imageDuplat: UIImageView!
    @IBOutlet weak var descDuPlat: UILabel!
    
    var plat : Plat!
    
    func miseEnplace(plat: Plat){
        
        self.plat = plat
        
        imageDuplat.image = self.plat.image
        imageDuplat.contentMode = .scaleAspectFill
        imageDuplat.clipsToBounds = true
        imageDuplat.layer.cornerRadius = 20
        
        descDuPlat.text = self.plat.desc
        descDuPlat.textAlignment = .center
        descDuPlat.numberOfLines = 0
        descDuPlat.font = FONT_DE_BASE
        descDuPlat.textColor = GRIS_TRES_CLAIRE
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
