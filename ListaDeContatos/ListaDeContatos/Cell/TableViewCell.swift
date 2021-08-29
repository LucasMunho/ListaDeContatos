//
//  TableViewCell.swift
//  ListaDeContatos
//
//  Created by Lucas Munho on 28/08/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var perfilImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    static let identifier = "TableViewCell"
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        perfilImageView.contentMode = .scaleAspectFit
        contentView.backgroundColor = .blue
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    
    func carregaDadosNaCelula(contato: Contato) {
        
        perfilImageView.image = contato.image
        nameLabel.text = contato.name
        phoneLabel.text = contato.phone
        emailLabel.text = contato.email
        
        
        
    }
    
    
    
    
}
