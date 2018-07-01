//
//  ViewController.swift
//  Concentration
//
//  Created by Rafael Henriques on 30/06/2018.
//  Copyright © 2018 rafaonseek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet {
            flipCountLbl.text = "Flips: \(flipCount)";
        }
    }
    @IBOutlet var cardBtns: [UIButton]!
    @IBOutlet weak var flipCountLbl: UILabel!
    
    var emojis : Array<String> = ["👻","🎃","👻","🎃"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func touchCard(_ sender: UIButton) {
        if let cardNumber = cardBtns.index(of: sender) {
            print("cardNumber = \(cardNumber)")
            flipCard(withEmoji: emojis[cardNumber] , on: sender)
            flipCount += 1
        } else {
            print("Chosen card was not in cardBtns")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        
        print("flipCard(withEmoji: \(emoji)")
        
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.4863265157, blue: 0, alpha: 1)
        }else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
        }
    }
}

