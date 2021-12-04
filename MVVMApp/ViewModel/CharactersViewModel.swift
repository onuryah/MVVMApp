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
