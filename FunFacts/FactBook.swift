//
//  factBook.swift
//  FunFacts
//
//  Created by Gurnoor Singh on 11/12/15.
//  Copyright © 2015 Cyberician. All rights reserved.
//

import Foundation

struct FactBook {
    
    // array of facts
    let factsArray = [
        "Ants stretch when they wake up in the morning.",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually made mostly of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "The state of Florida is bigger than England.",
        "Some penguins can leap 2-3 meters out of the water.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the earth when the Great Pyramid was being built.",
        "The youngest pope was 11 years old.",
            
        "Mark Twain didn't graduate from elementary school.",
            
        "Proportional to their weight, men are stronger than horses.",
            
        "Pilgrims ate popcorn at the first Thanksgiving dinner.",
            
        "They have square watermelons in Japan - they stack better.",
        
        "Iceland consumes more Coca-Cola per capita than any other nation.",
        
        "Heinz Catsup leaving the bottle travels at 25 miles per year.",
        
        "It is possible to lead a cow upstairs but not downstairs.",
        
        "Armadillos can be housebroken.",
        
        "The first Fords had engines made by Dodge.",
        
        "A mole can dig a tunnel 300 feet long in just one night.",
        
        "Peanuts are one of the ingredients in dynamite.",
        
        "Ancient Egyptians slept on pillows made of stone.",
        
        "A hippo can open its mouth wide enough to fit a 4 foot tall child inside.",
        
        "A quarter has 119 grooves on its edge, a dime has one less groove.",
            
        "A hummingbird weighs less than a penny.",
            
        "Until 1796, there was a state in the United States called Franklin. Today it is known as Tennessee.",
        
        "The flashing warning light on the cylindrical Capitol Records tower spells out HOLLYWOOD in Morse code.",
        
        "Every time you lick a stamp, you're consuming 1/10 of a calorie.",
            
        "The average person has over 1,460 dreams a year.",
            
        "One in every 4 Americans has appeared on television.",
        
        "The average American will eat about 11.9 pounds of cereal per year.",
        
        "Over 1,000 birds a year die from smashing into windows.",
            
        "The State of Florida is bigger than England.",
            
        "Ants stretch when they wake up in the morning.",
        
        "Thomas Edison, light bulb inventor, was afraid of the dark.",
            
        "During your lifetime, you'll eat about 60,000 pounds of food. That's the weight of about 6 elephants.",
            
        "Some ribbon worms will eat themselves if they can't find any food.",
        
        "The world's oldest piece of chewing gum is 9000 years old.",
        
        "In space, astronauts cannot cry, because there is no gravity, so the tears can't flow.",
            
        "About 3000 years ago, most Egyptians died by the time they were 30.",
            
        "More people use blue toothbrushes than red ones.",
            
        "Your ribs move about 5 million times a year, every time you breathe.",
            
        "In the White House, there are 13,092 knives, forks and spoons.",
            
        "Slugs have 4 noses.",
            
        "Recycling one glass jar saves enough energy to watch TV for 3 hours.",
        
        "Lightning strikes about 6,000 times per minute on this planet.",

        "Owls are the only birds who can see the color blue."]
    
    
    // chooses a random fact from the array
    func randomFact() -> String {
        let unsignedArrayCount = UInt32(factsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
        
    }
}
