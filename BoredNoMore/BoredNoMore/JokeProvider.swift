//
//  JokeProvider.swift
//  FunFacts
//
//  Created by djchai on 10/18/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//

import GameKit

struct DadJoke {
    let joke: String
    let punchLine: String
}

struct JokeProvider {
    let jokes: [DadJoke] = [
        DadJoke(joke: "Why did the mushroom get invited to the party?", punchLine: "Because he was a fungi"),
        DadJoke(joke: "I'm reading a book about anti-gravity.", punchLine: "It's impossible to put down"),
        DadJoke(joke: "If you're American when you go into the bathroom, and American when you come out, what are you when you're in there?", punchLine: "European"),
        DadJoke(joke: "Did you know the first French Fries weren't actually cooked in France?", punchLine: "They were cooked in Greece"),
        DadJoke(joke: "Want to hear a joke about a peice of paper?", punchLine: "Never mind...it's tearable"),
        DadJoke(joke: "I just watched a documentary about beavers.", punchLine: "It was the best dam show I ever saw"),
        DadJoke(joke: "If you see a robbery at an Apple Store...", punchLine: "Does that make you an iWitness?"),
        DadJoke(joke: "A ham sandwhich walks into a bar and orders a beer. The bartender says...", punchLine: "I'm sorry, we don't serve food here"),
        DadJoke(joke: "What is Forest Gump's password?", punchLine: "1forrest1"),
        DadJoke(joke: "Why did the Clydesdale give the pony a glass of water?", punchLine: "Because he was a little horse"),
        DadJoke(joke: "If you boil a clown...", punchLine: "Do you get a laughing stock?"),
        DadJoke(joke: "Finally realized why my plant sits around doing nothing all day...", punchLine: "He loves his pot."),
        DadJoke(joke: "Toys R Us is filing for bankruptcy.", punchLine: "Four more times and it will qualify them to be President"),
        DadJoke(joke: "Don't look at the eclipse through a colander.", punchLine: "You'll strain your eyes."),
        DadJoke(joke: "I bought some shoes from a drug dealer.", punchLine: "I don't know what he laced them with, but I was tripping all day!"),
        DadJoke(joke: "Why do chicken coops only have two doors?", punchLine: "Because if they had four, they would be chicken sedans"),
        DadJoke(joke: "What do you call a factory that sells passable products?", punchLine: "A satisfactory"),
        DadJoke(joke: "How do you make a Kleenex dance?", punchLine: "Put a little boogie in it"),
        DadJoke(joke: "When a dad drives past a graveyard: Did you know that's a popular cemetery?", punchLine: "Yep, people are just dying to get in there"),
        DadJoke(joke: "Why did the invisible man turn down the job offer?", punchLine: "He couldn't see himself doing it"),
        DadJoke(joke: "How do you make holy water?", punchLine: "You boil the hell out of it"),
        DadJoke(joke: "I had a dream that I was a muffler last night.", punchLine: "I woke up exhausted!")
    ]
 
    func randomJoke() -> DadJoke {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: jokes.count)
        return jokes[randomNumber]
    }
}

//let newJoke = JokeProvider()
//let randNumber = newJoke.randomNum()




