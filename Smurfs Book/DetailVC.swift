//
//  DetailVC.swift
//  Smurfs Book
//
//  Created by Serhat Küçük on 4.01.2021.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var smurfNameLabel: UILabel!
    @IBOutlet weak var smurfJobLabel: UILabel!
    @IBOutlet weak var smurfImage: UIImageView!
    
    var chosenSmurf : Smurf?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        smurfNameLabel.text = chosenSmurf?.name
        smurfJobLabel.text = chosenSmurf?.job
        smurfImage.image = chosenSmurf?.image

        
    }
    

    

}
