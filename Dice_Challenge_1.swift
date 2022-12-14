//Assignemnt to Change the opacity of the image 1 to 0.5


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setting the image properties to dice. as soon as application load's dice image 6 will be displayed
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix") 
        
        //Who           What   Value
        diceImageView1.alpha = 0.5
        
       //who refert to the image1 object [diceImageView1] 
      //what refers to what kind of property we want to change and finally value that is 0.5
      
     
    }


}
