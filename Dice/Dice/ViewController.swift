//
//  ViewController.swift
//  Dice
//
//  Created by Achyuth K on 31/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageDiceView: UIImageView!
    // Storing all the dices images in one single Array
    var diceArray = [UIImage(imageLiteralResourceName: "dice_1"),UIImage(imageLiteralResourceName: "dice_2"),UIImage(imageLiteralResourceName: "dice_3"),UIImage(imageLiteralResourceName: "dice_4"),UIImage(imageLiteralResourceName: "dice_5"),UIImage(imageLiteralResourceName: "dice_6")];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //initally dice_3 is assigned dice 3 ace is displayed as ssoon as app started
        imageDiceView.image = UIImage(imageLiteralResourceName: "dice_3")
        
    }
    
    // creating button functionality
    @IBAction func RollDice_1(_ sender: Any) {
        
        //functionality of button what to happen on button is pressed
        // i want to change the dice face every time on button press
        
        imageDiceView.image = diceArray.randomElement();
        
        // the above statment will pic the random element present in array and that perticulaaar image will be displayed on the dice_face
        
    }
    

}

