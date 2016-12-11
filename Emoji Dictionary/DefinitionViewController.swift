//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Tyson Rinderknecht2 on 12/11/16.
//  Copyright © 2016 Tyson Rinderknecht. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
 
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🦑" {
            definitionLabel.text = "Giant Squid"
        }
        
        if emoji == "🐘" {
            definitionLabel.text = "Elephant"
        }
        
        if emoji == "🦍" {
            definitionLabel.text = "Gorilla"
        }
        
        if emoji == "🐊" {
            definitionLabel.text = "Alligator"
        }
        
        if emoji == "🐡" {
            definitionLabel.text = "Blow Fish"
        }
        
        if emoji == "🦅" {
            definitionLabel.text = "Bald Eagle"
        }
        
        if emoji == "🐜" {
            definitionLabel.text = "Ant"
        }
        
        if emoji == "🦈" {
            definitionLabel.text = "Shark"
        }
        
        if emoji == "🦎" {
            definitionLabel.text = "Geico"
        }
        
        if emoji == "🐙" {
            definitionLabel.text = "Baby Squid"
        }
        
        if emoji == "🦏" {
            definitionLabel.text = "Rhino"
        }
        
        if emoji == "🐋" {
            definitionLabel.text = "Blue Whale"
        }
        
        if emoji == "🦉" {
            definitionLabel.text = "Owl"
        }
        
        if emoji == "🦇" {
            definitionLabel.text = "Bat"
        }
        
        if emoji == "🦌" {
            definitionLabel.text = "Buck"
        }
        
        if emoji == "🐑" {
            definitionLabel.text = "Big Horn Sheep"
        }
        
        if emoji == "🦃" {
            definitionLabel.text = "Turkey"
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
