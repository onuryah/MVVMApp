//
//  CharactersViewModel.swift
//  MVVMApp
//
//  Created by Ceren Çapar on 4.12.2021.
//

import Foundation
import UIKit

struct CharacterListViewModel{
    let characterList : [Characters]
    
    func numberOfRowsInSection() -> Int {
        return self.characterList.count
    }
    
    func charactersAtIndex (_ index : Int) -> CharacterViewModel{
        let character = self.characterList[index]
        return CharacterViewModel(character: character)
    }
}

struct CharacterViewModel{
    let character : Characters
    
    var name : String{
        return self.character.name
    }
    
    var place : String{
        return self.character.place
    }
    
    var power : Double{
        return self.character.power
    }
    
    var image : UIImage{
        return self.character.image
    }
    
    var utterance : String{
        return self.character.utterance
    }
    
}

struct DataRouter{
    func addCharacter() -> [Characters]{
        let fiora = Characters(image: UIImage(named: "fiora")!, power: 100, place: "Warrior", name: "Fiora", utterance: "Others try, I succeed!")
        let aatrox = Characters(image: UIImage(named: "aatrox")!, power: 80, place: "Warrior", name: "Aatrox", utterance: "Now,hear the silence of annihilation!")
        let ekko = Characters(image: UIImage(named: "ekko")!, power: 90, place: "Mage", name: "Ekko", utterance: "It's not how much time you have, it's how you use it.")
        let jinx = Characters(image: UIImage(named: "jinx")!, power: 98.5, place: "Attack Damage Carrier", name: "Jinx", utterance: "Rules are made to be broken... like buildings! Or people!")
        let kindred = Characters(image: UIImage(named: "kindred")!, power: 77, place: "Archer", name: "Kindred", utterance: "Wolf: I see water.  Lamb: They are called tears.")
        let vayne = Characters(image: UIImage(named: "vayne")!, power: 95, place: "Attack Damage Carrier", name: "Vayne", utterance: "Let us hunt those who have fallen to darkness!")
        let vi = Characters(image: UIImage(named: "vi")!, power: 90, place: "Fighter", name: "Vi", utterance: "I have got five reasons for you to shut up.")
        let array : [Characters] = [fiora,aatrox,ekko,jinx,kindred,vayne,vi]
        return array
    }
}
