//
//  FactProvider.swift
//  FunFacts
//
//  Created by djchai on 10/16/17.
//  Copyright © 2017 Phyllis Wong. All rights reserved.
//
import GameKit

struct FactProvider {
    let facts = [
        "Ants stretch when they wake up in the morning.",
        "Ostriches can run faster than horses.",
        "Olympic gold medals are actually made mostly of silver.",
        "You are born with 300 bones. By the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "The state of Florida is bigger than England.",
        "Some penguins can leap 2-3 meters out of the water.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the Earth when the Great Pyramid was being built.",
        "When hippos are upset, their sweat turns red.",
        "A flock of crows is known as a murder.",
        "Billy goats urinate on their own heads to smell more attractive to females.",
        "Polar bears can eat as many as 86 penguins in a single sitting.",
        "Movie trailers were originally shown after the movie, which is why they are called \"trailers\".",
        "If you consistently fart for 6 years and 9 months, enough gas is produced to create the energy of an atomic bomb.",
        "The average person walks the equivalent of three times around the world in a lifetime",
        "Coca-Cola would be green if coloring wasn’t added to it",
        "You cannot snore and dream at the same time.",
        "A broken clock is right two times every day.",
        "New York drifts about one inch farther away from London each year.",
        "It would take a sloth one month to travel one mile.",
        "A sneeze travels about 100 miles per hour.",
        "Bolts of lightning can shoot out of an erupting volcano.",
        "The world’s oldest piece of chewing gum is over 9,000 years old!",
        "A coyote can hear a mouse moving underneath a foot of snow.",
        "Chewing gum while you cut an onion will help keep you from crying.",
        "If you were to stretch a Slinky out until it’s flat, it would measure 87 feet long.",
        "Al Capone’s business card said he was a used furniture dealer",
        "Banging your head against a wall burns 150 calories an hour.",
        "A crocodile can’t poke its tongue out.",
        "It is physically impossible for pigs to look up into the sky.",
        "Guinness Book of Records holds the record for being the book most often stolen from Public Libraries.",
        "About 150 people per year are killed by coconuts.",
        "Ketchup was used as a medicine back in the 1930’s.",
        "Chewing gum burns about 11 calories per hour.",
        "Celery has negative calories! It takes more calories to eat a piece of celery than the celery has in it to begin with. It’s the same with apples!",
        "Honey never spoils.",
        "Blueberries will not ripen until they are picked.",
        "You must be really bored.",
        "It is considered good luck in Japan when a sumo wrestler makes your baby cry.",
        "In 2006 someone tried to sell New Zealand on eBay. The price got up to $3,000 before eBay shut it down."
    ]
    
    func randomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
        return facts[randomNumber]
    }
}
