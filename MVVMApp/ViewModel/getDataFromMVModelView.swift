//
//  getDataFromMVModelView.swift
//  MVVMApp
//
//  Created by Ceren Çapar on 6.12.2021.
//

import Foundation

struct GetDataFromMV{
    func getDataFromMV(){
        let myArray = DataRouter().addCharacter()
        let seconArray = CharacterListViewModel(characterList: myArray)
    }
}
