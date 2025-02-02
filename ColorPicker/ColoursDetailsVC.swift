//
//  ColorsDetailsVC.swift
//  ColorPicker
//
//  Created by Chaitanya J on 01/02/2025.
//

import UIKit

class ColorsDetailsVC: UIViewController{
 

    var colour: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = colour ?? .blue
    }
    

}




