//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var storyTextLabel: UILabel!

    @IBOutlet var choiceOneButton: UIButton!
    @IBOutlet var choiceTwoButton: UIButton!

    var storyBrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        storyBrain.subitChoice(sender.currentTitle!)
        updateUI()
    }

    func updateUI() {
        storyTextLabel.text = storyBrain.getStoryTitle()
        choiceOneButton.setTitle(storyBrain.getStoryFirstChoice(), for: .normal)
        choiceTwoButton.setTitle(storyBrain.getStorySecondChoice(), for: .normal)
    }
}
