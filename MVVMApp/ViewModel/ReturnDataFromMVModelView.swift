//
//  getDataFromMVModelView.swift
//  MVVMApp
//
//  Created by Ceren Çapar on 6.12.2021.
//

import Foundation



struct ReturnDataFromMV{
    func returnDataFromMV() -> CharacterListViewModel{
        let myArray = DataRouter().addCharacter()
        return CharacterListViewModel(characterList: myArray)
    }
}
