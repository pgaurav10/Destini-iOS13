//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Gaurav Patil.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.stories[storyBrain.storyNo].title
        
        choice1Button.setTitle(storyBrain.stories[storyBrain.storyNo].choice1, for: UIControl.State.normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.storyNo].choice2, for: UIControl.State.normal)
    }
}

