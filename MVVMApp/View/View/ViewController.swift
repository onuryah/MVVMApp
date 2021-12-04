//
//  ViewController.swift
//  MVVMApp
//
//  Created by Ceren Çapar on 3.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var characterListViewModel : CharacterListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        setTableView()
        tableView.reloadData()
        characterListViewModel.characterList = DataRouter().addCharacter()
    }
    fileprivate func registerCell(){
        let cellNib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "tableViewCell")
    }
    fileprivate func setTableView(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    fileprivate func addCharacters(){
        
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as! TableViewCell
        return cell
    }
    
    
}

