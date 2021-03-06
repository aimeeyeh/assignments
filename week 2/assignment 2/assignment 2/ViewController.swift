//
//  ViewController.swift
//  assignment 2
//
//  Created by Chih-Chen Yeh on 2021/3/6.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var factLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomFactsAndColors()
    }
    
//    var randomFactsAndColors = ["The heads on Easter Island have bodies.": UIColor.brown,"The moon has moonquakes.": UIColor.gray , "Goosebumps are meant to ward off predators.": UIColor.red, "Humans are the only animals that blush.": UIColor.cyan, "The wood frog can hold its pee for up to eight months.": UIColor.blue, "The hottest spot on the planet is in Libya.": UIColor.black, "You lose up to 30 percent of your taste buds during flight.": UIColor.darkGray, "The “M's” in M&Ms stand for “Mars” and “Murrie.”": UIColor.purple ]
    
    //Is it possible to convert a dictionary into an array?

    
    func getRandomFactsAndColors(){
        let facts = ["The heads on Easter Island have bodies.","The moon has moonquakes.", "Goosebumps are meant to ward off predators.", "Humans are the only animals that blush.", "The wood frog can hold its pee for up to eight months.", "The hottest spot on the planet is in Libya.", "You lose up to 30 percent of your taste buds during flight.", "The “M's” in M&Ms stand for “Mars” and “Murrie.”"]
        
        let backgroundColors = [UIColor.brown, UIColor.gray, UIColor.red, UIColor.orange, UIColor.blue, UIColor.black, UIColor.darkGray, UIColor.purple]
        
        let randomNumber = Int.random(in: 0...facts.count - 1)
        view.backgroundColor = backgroundColors[randomNumber]
        factLabel.text = facts[randomNumber]
        factLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        factLabel.numberOfLines = 0
    }

    
    @IBAction func buttonClicked(_ sender: UIButton) {
        getRandomFactsAndColors()
    }
}

