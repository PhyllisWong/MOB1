//
//  triviaProvider.swift
//  FunFacts
//
//  Created by djchai on 10/18/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import GameKit

struct Trivia {
    let question: String
    let answer: String
    let wrongAnswer1: String
    let wrongAnswer2: String
    let wrongAnswer3: String
}

struct TriviaProvider {
    let trivia: [Trivia] = [
        Trivia(question: "What four states of matter are observable in everyday life?", answer: "Solid, Liquid, Gas and Plasma", wrongAnswer1: "Liquid, Gas, Energy, Plasma", wrongAnswer2: "Solid, Liquid, Light, Plasma", wrongAnswer3: "Plasma, Liquid, Solid, Mass"),
        Trivia(question: "Pupusas, handmade thick stuffed corn tortillas, are a traditional dish from what country?", answer: "El Salvador", wrongAnswer1: "Mexico", wrongAnswer2: "Guadamala", wrongAnswer3: "Peru"),
        Trivia(question: "Which of the traditional five senses are dolphins believed not to possess?", answer: "Smell", wrongAnswer1: "Taste", wrongAnswer2: "Hearing", wrongAnswer3: "Sight"),
        Trivia(question: "Victoria Beckham was a member of which all girl English pop group formed in 1994?", answer: "The Spice Girls", wrongAnswer1: "Ace of Bass", wrongAnswer2: "Destny's Child", wrongAnswer3: "En Vogue"),
        Trivia(question: "Who was the original singer for the American punk rock band The Misfits?", answer: "Glenn Danzig", wrongAnswer1: "Henry Rollins", wrongAnswer2: "Sid Vicious", wrongAnswer3: "Joey Ramone"),
        Trivia(question: "K-pop is a genre of music that originated in what country?", answer: "South Korea", wrongAnswer1: "Kenya", wrongAnswer2: "UK", wrongAnswer3: "North Korea"),
        Trivia(question: "Lambeau Field is the home field of which National Football League team?", answer: "Green Bay Packers", wrongAnswer1: "Chargers", wrongAnswer2: "Yankees", wrongAnswer3: "Vikings"),
        Trivia(question: "What is the most common type of pitch thrown by pitchers in baseball?", answer: "Fastball", wrongAnswer1: "Strike", wrongAnswer2: "Ball", wrongAnswer3: "Curve Ball"),
        Trivia(question: "Barry Bonds currently holds the Major League Baseball home run record with how many home runs?", answer: "762", wrongAnswer1: "567", wrongAnswer2: "764", wrongAnswer3: "565"),
        Trivia(question: "What dish, made from crushed durum wheat, is a staple of western North Africa?", answer: "Couscous", wrongAnswer1: "Quinoa", wrongAnswer2: "Buck Wheat", wrongAnswer3: "Farro"),
        Trivia(question: "Celebrity chef Gordon Ramsay opened his first restaurant in what city?", answer: "London", wrongAnswer1: "Los Angeles", wrongAnswer2: "San Francisco", wrongAnswer3: "New York City"),
        Trivia(question: "Sushi is a type of cuisine that originated in what country?", answer: "Japan", wrongAnswer1: "South Korea", wrongAnswer2: "Tokyo", wrongAnswer3: "China")
    ]
    
    func randomQuestion() -> Trivia {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: trivia.count)
        return trivia[randomNumber]
    }
}

