//
//  ViewController.swift
//  DiceGame
//
//  Created by Ashish Kheveria on 11/12/2020.
//  Copyright © 2020 Ashish Kheveria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //IBAction allows me to take some action on the UI element when interacted by the user
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        //rather than assigning the whole array when assigning image to diceImageView1 and 2 mentioning with the position of the element in that array by adding tag in the end, assign a constant/variable/label to that array and use that label to assign the image for both diceImageView1 and 2 by mentioning the position with either two methods that is described in code line #23
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        // now there are two ways to assign the image from the array of elements, first is, by using the postion of the element in the array, using tag/index in the end and writing the random number generator code i.e Int.random(in: x...y) withing "[]" or by just writing .randomElement() after diceArray which will pick the element from within that array
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()

    }
}
