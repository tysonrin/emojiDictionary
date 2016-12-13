//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Tyson Rinderknecht2 on 12/10/16.
//  Copyright © 2016 Tyson Rinderknecht. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var firstTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firstTableView.dataSource = self
        firstTableView.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {

        let emoji1 = Emoji()
        emoji1.stringEmoji = "🐘"
        emoji1.birthYear = 2010
        emoji1.category = "Land Animal"
        emoji1.definition = "Elephant"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🦍"
        emoji2.birthYear = 2009
        emoji2.category = "Land Animal"
        emoji2.definition = "Gorilla"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐊"
        emoji3.birthYear = 2011
        emoji3.category = "Swamp Animal"
        emoji3.definition = "Aligator"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🐡"
        emoji4.birthYear = 2010
        emoji4.category = "Aquatic Animal"
        emoji4.definition = "Blow Fish"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🦑"
        emoji5.birthYear = 2012
        emoji5.category = "Aquatic Animal"
        emoji5.definition = "Giant Squid"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🦅"
        emoji6.birthYear = 2014
        emoji6.category = "Flight Animal"
        emoji6.definition = "Bald Eagle"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🐜"
        emoji7.birthYear = 2013
        emoji7.category = "Insect"
        emoji7.definition = "Ant"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🦈"
        emoji8.birthYear = 2008
        emoji8.category = "Aquatic Animal"
        emoji8.definition = "Shark"
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "🦎"
        emoji9.birthYear = 2010
        emoji9.category = "Land Animal"
        emoji9.definition = "Geico"
        
        let emoji10 = Emoji()
        emoji10.stringEmoji = "🐙"
        emoji10.birthYear = 2010
        emoji10.category = "Aquatic Animal"
        emoji10.definition = "Baby Octopus"
        
        let emoji11 = Emoji()
        emoji11.stringEmoji = "🦏"
        emoji11.birthYear = 2010
        emoji11.category = "Land Animal"
        emoji11.definition = "Rhino"
        
        let emoji12 = Emoji()
        emoji12.stringEmoji = "🐋"
        emoji12.birthYear = 2010
        emoji12.category = "Aquatic Animal"
        emoji12.definition = "Blue Whale"
        
        let emoji13 = Emoji()
        emoji13.stringEmoji = "🦉"
        emoji13.birthYear = 2016
        emoji13.category = "Flight Animal"
        emoji13.definition = "Owl"
        
        let emoji14 = Emoji()
        emoji14.stringEmoji = "🦇"
        emoji14.birthYear = 2010
        emoji14.category = "Flight Animal"
        emoji14.definition = "Bat"
        
        let emoji15 = Emoji()
        emoji15.stringEmoji = "🦌"
        emoji15.birthYear = 2010
        emoji15.category = "Land Animal"
        emoji15.definition = "Buck"
        
        let emoji16 = Emoji()
        emoji16.stringEmoji = "🐑"
        emoji16.birthYear = 2011
        emoji16.category = "Land Animal"
        emoji16.definition = "Big Horn Sheep"
        
        let emoji17 = Emoji()
        emoji17.stringEmoji = "🦃"
        emoji17.birthYear = 2009
        emoji17.category = "Land Animal"
        emoji17.definition = "Turky"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9, emoji10, emoji11, emoji12, emoji13, emoji14, emoji15, emoji16, emoji17]
        
        
}
}
