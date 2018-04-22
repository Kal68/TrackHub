//
//  MainMenuVC+Extension.swift
//  TrackHub
//
//  Created by Assumani, Medi on 4/13/18.
//  Copyright © 2018 Assumani, Medi. All rights reserved.
//

import Foundation
import UIKit

extension MainMenuViewController: UITableViewDataSource, UITableViewDelegate{
    
            // MARK:  DATA SOURCE METHODS
    
    // Function to keep track of the amount of cells in the main menu
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return userProducts.count
    }
    // Function to fill up each table view cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.mainMenuCellIdentifier, for: indexPath) as! ProductCell
        let product = userProducts[indexPath.row]
        cell.productNameLabel.text = product.productName
        cell.productProfitLabel.text = "$" + product.getProductProfit().convertDoubleToString()
        cell.productImage.image = UIImage(named: "noImage")
        return cell
    }
    
    // function to remove a product from the main menu and from the array
    func tableView(_ tableview : UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            userProducts.remove(at: indexPath.row)
        }
    }
}

extension MainMenuViewController: UIPickerViewDelegate, UIPickerViewDataSource{

    // returns the number of 'columns' to display.
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return Constants.amountOfProductCategories
    }
    
    // Returns the text to be shown on each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
}



