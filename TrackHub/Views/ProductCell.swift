//
//  ProductCell.swift
//  TrackHub
//
//  Created by Assumani, Medi on 3/30/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {
    
    // - MARK : @IBOULETS
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productProfitLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
                // Setting up the Cell Views
        guard let cellView = self.cellView, let name = self.productNameLabel, let profit = self.productProfitLabel, let image = self.productImage else{
            print("Error Occured")
            return
        }
        
//<<<<<<< HEAD

        //cellView.layer.cornerRadius = image.frame.height / 2
//=======
        cellView.layer.cornerRadius = image.frame.height / 2
//>>>>>>> 49a932e1be99ac03fbc778d467a7fbc76c5eeddb
        image.layer.cornerRadius = image.frame.size.width / 2
        image.clipsToBounds = true
        name.textColor = UIColor.black
        profit.textColor = UIColor.green
   
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
