//
//  ViewController.swift
//  MVVMApp
//
//  Created by Ceren Çapar on 3.12.2021.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var tableView: UITableView!
    var characterListViewModel : CharacterListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        setTableView()
        tableView.reloadData()
        self.characterListViewModel = ReturnDataFromMV().returnDataFromMV()
    }
    fileprivate func registerCell(){
        let cellNib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "tableViewCell")
    }
    fileprivate func setTableView(){
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characterListViewModel == nil ? 0 : self.characterListViewModel.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as! TableViewCell
        adjustCell(cell: cell, indexPath: indexPath)
        return cell
    }
    
    private func adjustCell(cell: TableViewCell, indexPath : IndexPath){
        let characterViewModel = self.characterListViewModel.charactersAtIndex(indexPath.row)
        
        cell.nameLabelField.text = characterViewModel.name
        cell.powerLabelField.text = "Power: \(characterViewModel.power)"
        cell.utteranceLabelField.text = "\"\(characterViewModel.utterance)\""
        cell.roleLabelField.text = "Role: \(characterViewModel.role)"
        cell.characterImage.image = (characterViewModel.image)
    }
    func getDataFromMV(){
        let myArray = DataRouter().addCharacter()
        self.characterListViewModel = CharacterListViewModel(characterList: myArray)
    }
    
    
    
}

