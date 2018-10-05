//
//  MonNavController.swift
//  MonRestoDuMonde
//
//  Created by Marame on 05/10/2018.
//  Copyright © 2018 Gueye Gora. All rights reserved.
//

import UIKit

class MonNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.barTintColor = NOIR
        navigationBar.tintColor = GRIS_TRES_CLAIRE
        navigationBar.titleTextAttributes = [.font: FONT_DE_BASE as Any, .foregroundColor: GRIS_TRES_CLAIRE]
    }

  
}
