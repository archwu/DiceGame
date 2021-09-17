//
//  ViewController.swift
//  DiceGame
//
//  Created by AW on 9/16/21.
//

import UIKit

class ViewController: UIViewController {

    var score = 0
    @IBOutlet weak var dice1pic: UIImageView!
    @IBOutlet weak var dice2pic: UIImageView!
    
    @IBOutlet weak var scoreLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func abvPressed(_ sender: UIButton) {
        let dice1 = Int.random(in: (1...6))
        let dice2 = Int.random(in: (1...6))
        let imgName1 = "Dice\(dice1)"
        let imgName2 = "Dice\(dice2)"
        dice1pic.image = UIImage(named: imgName1)
        dice2pic.image = UIImage(named: imgName2)
        if dice1+dice2 > 7 {
            score+=1
        } else {
            score-=1
        }
        scoreLbl.text = "Score = \(score)"
    }
    @IBAction func lucky7Pressed(_ sender: UIButton) {
        let dice1 = Int.random(in: (1...6))
        let dice2 = Int.random(in: (1...6))
        let imgName1 = "Dice\(dice1)"
        let imgName2 = "Dice\(dice2)"
        dice1pic.image = UIImage(named: imgName1)
        dice2pic.image = UIImage(named: imgName2)
        if dice1+dice2 == 7 {
            score+=7
        } else {
            score-=1
        }
        scoreLbl.text = "Score = \(score)"
    }
    @IBAction func belowPressed(_ sender: UIButton) {
        let dice1 = Int.random(in: (1...6))
        let dice2 = Int.random(in: (1...6))
        let imgName1 = "Dice\(dice1)"
        let imgName2 = "Dice\(dice2)"
        dice1pic.image = UIImage(named: imgName1)
        dice2pic.image = UIImage(named: imgName2)
        if dice1+dice2 < 7 {
            score+=1
        } else {
            score-=1
        }
        scoreLbl.text = "Score = \(score)"
    }
    
}

