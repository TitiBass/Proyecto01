//
//  ShoppingViewController.swift
//  tienda
//
//  Created by Usuario invitado on 4/10/18.
//  Copyright © 2018 TitiBAss. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

   
    @IBOutlet weak var buytable: UITableView!
    @IBOutlet weak var total: UILabel!

    @IBOutlet weak var precompra: UILabel!
    var shoping = [Producto]()
    var bill : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if shoping.isEmpty{
            precompra.alpha = 1
            total.text = "0.00"
        }
        else{
            precompra.alpha = 0
            for i in 0...shoping.count-1
            {
                bill = bill + shoping[i].precio
            }
            total.text = "$\(bill)"
            reloadInputViews()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoping.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "comprascell", for: indexPath)
        
        cell.textLabel?.text = "\(shoping[indexPath.row].nombre)"
        cell.detailTextLabel?.text = "$ \(shoping[indexPath.row].precio)"
        
        return cell
    }
    
    
}
