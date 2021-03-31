//
//  ViewController.swift
//  Destiny
//
//  Created by Adnan Sarker on 31/03/2021.
//  Copyright © 2021 Justdreams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
    
    func updateUI() {
        storyText.text = storyBrain.getStoryTitle()
        choiceOneButton.setTitle(storyBrain.getChoice1(), for: .normal)
        choiceTwoButton.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

