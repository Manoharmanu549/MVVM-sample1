//
//  ProductTableViewCell.swift
//  MVVM sample1
//
//  Created by Manohar on 9/28/23.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var lblProductName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func loadCellData(model: ProductModel) {
        lblProductName.text = model.title
    }
    
}
