//
//  ViewController.swift
//  I Am Rich
//
//  Created by Achyuth K on 28/10/22.
//

import UIKit

class ViewController: UIViewController {
          
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
   let imagesArray = [UIImage(imageLiteralResourceName: "dice_1"),UIImage(imageLiteralResourceName: "dice_2"),UIImage(imageLiteralResourceName: "dice_3"),UIImage(imageLiteralResourceName: "dice_4"),UIImage(imageLiteralResourceName: "dice_5"),UIImage(imageLiteralResourceName: "dice_6")]

    override func viewDidLoad() {
        super.viewDidLoad()
  
        diceImageView1.image = UIImage(imageLiteralResourceName: "dice_1");
        diceImageView2.image = UIImage(imageLiteralResourceName: "dice_6");     
     
    }//view dashboard
    
    @IBAction func rollButton(_ sender: Any) {
         
        //random dice face on dice1
        diceImageView1.image = imagesArray[Int.random(in: 0...5)];
        //random number in dice 2
        diceImageView2.image = imagesArray.randomElement();
    
    }
    
}

