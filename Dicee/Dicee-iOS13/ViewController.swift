//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // These Interface Builder Outlets(IBOutlet) allow me to
    // change the functionalities of my images onscreen.
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // let makes a constant variable -- therefore you cannot change it.
    // if you would like to change the array, change it to a var type.
    let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"),
                                      UIImage(imageLiteralResourceName: "DiceTwo"),
                                      UIImage(imageLiteralResourceName: "DiceThree"),
                                      UIImage(imageLiteralResourceName: "DiceFour"),
                                      UIImage(imageLiteralResourceName: "DiceFive"),
                                      UIImage(imageLiteralResourceName: "DiceSix")]
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // We show onscreen the picture of a random die for both dice.
        // Both sets of 2 lines below have the same functionality however
        // the top one is slightly more efficient.
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
        // diceImageView1.image = diceArray[Int.random(in: 0...5)]
        // diceImageView2.image = diceArray[Int.random(in: 0...5)]
    }
}
