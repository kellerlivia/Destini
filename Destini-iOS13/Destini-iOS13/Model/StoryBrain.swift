//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    let stories = [
    Story(
        titleStory: "Which do you prefer?",
        alternative1: "Back-end", alternative2: "Front-end", alternative1Destination: 2, alternative2Destination: 1
    ),
    Story(
        titleStory: "Which programming language do you use the most on the front-end?",
        alternative1: "Angular", alternative2: "React", alternative1Destination: 5, alternative2Destination: 3
    ),
    Story(
        titleStory: "Which programming language do you use the most on the back-end?",
        alternative1: "Java", alternative2: "Python", alternative1Destination: 5, alternative2Destination: 4
    ),
    Story(
        titleStory: "Do you like mobile?",
        alternative1: "Yes", alternative2: "No", alternative1Destination: 0, alternative2Destination: 0
    ),
    Story(
        titleStory: "Have you been programming in python for a long time?",
        alternative1: "Yes", alternative2: "No", alternative1Destination: 0, alternative2Destination: 0
    ),
    Story(
        titleStory: "And do you know programming logic?",
        alternative1: "Yes", alternative2: "No", alternative1Destination: 0, alternative2Destination: 0
      )
    ]

    var storyNumber = 0
    
    func getStoryText () -> String {
        return stories[storyNumber].titleStory
    }
    
    func getChoice1Text () -> String {
        return stories[storyNumber].alternative1
    }
    
    func getChoice2Text () -> String {
        return stories[storyNumber].alternative2
    }
    
    mutating func nextStory (userOption: String) {
        let currentStory = stories[storyNumber]
        
        if userOption == currentStory.alternative1 {
            storyNumber = currentStory.alternative1Destination
        } else if userOption == currentStory.alternative2 {
            storyNumber = currentStory.alternative2Destination
        }
    }
    
    
}
