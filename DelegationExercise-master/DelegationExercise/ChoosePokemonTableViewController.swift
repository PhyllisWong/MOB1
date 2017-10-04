//
//  ChoosePokemonTableViewController.swift

/*
 Instructions
 
 Inform the PokemonDisplayController that the user has choosed a pokemon through a delegate
*/

import UIKit

protocol PokemonSelectorDelegate: class {
    func didSelectPokemon(pokemon: Pokemon)
}

class ChoosePokemonTableViewController: UITableViewController {

    // list of friends is the data source
    var pokemons: [Pokemon] = []
    var selectedPokemon: Pokemon?
    
    weak var delegate: PokemonSelectorDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    // how many sections you want to have
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    // how many rows to ahve
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return pokemons.count
    }

    // what to display in each cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokeCell", for: indexPath)

        cell.textLabel?.text =  pokemons[indexPath.row].name
        
        return cell
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedPokemon = pokemons[indexPath.row]
        
        
        // TODO:  You will want to inform your delegate here that a pokemon was selected
        delegate?.didSelectPokemon(pokemon: selectedPokemon)
        
    }

}
