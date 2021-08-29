//
//  ViewController.swift
//  ListaDeContatos
//
//  Created by Lucas Munho on 28/08/21.
//

import UIKit

class ListaContatosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let listaDeContatos:[Contato] = [
        Contato(image: UIImage(named: "iconeMan"), name: "Lucas", phone:                                      "1194181-2682", email: "lucas.munho@1994@gmail.com"),
        Contato(image: UIImage(named: "iconeMan"), name: "Alexandre", phone: "1197400-5856", email: "alexandre@gmail.com"),
        Contato(image: UIImage(named: "iconeWoman"), name: "Gisele", phone: "1199839-9090", email: "Gisel@gmail.com"),
        Contato(image: UIImage(named: "iconeWoman"), name: "Talita", phone: "1197400-8736", email: "talita@gmail.com"),
        Contato(image: UIImage(named: "iconeMan"), name: "Icaro", phone: "1197400-8856", email: "icaro@gmail.com"),
        Contato(image: UIImage(named: "iconeWoman"), name: "Maria", phone: "119838-5856", email: "Maria@gmail.com"),
        Contato(image: UIImage(named: "iconeWoman"), name: "Sonia", phone: "1198763-5856", email: "sonia@gmail.com")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: TableViewCell.identifier)
       
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaDeContatos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else { return UITableViewCell() }
        cell.carregaDadosNaCelula(contato: listaDeContatos[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

}

class Contato{
    
    let image: UIImage?
    let name: String
    let phone: String
    let email: String
    
    init(image: UIImage?, name: String, phone: String, email: String){
        self.image = image
        self.name = name
        self.phone = phone
        self.email = email
    }
}
