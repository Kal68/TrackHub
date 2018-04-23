//
//  TotalInvestmentMade.swift
//  TrackHub
//
//  Created by Assumani, Medi on 3/26/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import UIKit

class TotalInvestmentMade: UIViewController {


    @IBOutlet weak var totalInvestmentLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        totalInvestmentLabel.text = "$" + Product.totalInvestment.convertDoubleToString()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
