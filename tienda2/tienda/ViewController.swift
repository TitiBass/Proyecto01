//
//  ViewController.swift
//  tienda
//
//  Created by Usuario invitado on 20/9/18.
//  Copyright © 2018 TitiBAss. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {



    @IBOutlet weak var products: UITableView!
    
    var productos = [Producto]()
    var shop = [Producto]()
   
        var count: Double = 0
    
    
    //let Shop = ["Dominar 400", "Pulsar RS 200","Pulsar NS 200", "Avenger 220","V15", "Discover 125"]
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        productos.append(Producto(nombre: "Dominar 400", potencia: "8000 RPM", capacidad: "373.27 cc", torque: "35 Nm", motor: "4 Tiempos", precio: 70000, imagenmoto: "Dominar 400"))
        
        productos.append(Producto(nombre: "Pulsar RS 200", potencia: "9750 RPM", capacidad: "195.5 cc", torque: "18.3 Nm", motor: "SOHV - 4v", precio: 73500, imagenmoto: "Pulsar RS 200"))
        
         productos.append(Producto(nombre: "Pulsar NS 200", potencia: "9750 RPM", capacidad: "199.5 cc", torque: "18.3 Nm", motor: "SOHV - 4v", precio: 57500, imagenmoto: "Pulsar NS 200"))
        
        productos.append(Producto(nombre: "Avenger 220", potencia: "7000 RPM", capacidad: "219.89 cc", torque: "17.5 Nm", motor: "Monocilindrica 4 T", precio: 47000, imagenmoto: "Avenger 220"))
        
        productos.append(Producto(nombre: "V15", potencia: "7500 RPM", capacidad: "150 cc", torque: "13 Nm", motor: "4 Tiempos DTS-i", precio: 32800, imagenmoto: "V15"))
        
        productos.append(Producto(nombre: "Discover 125", potencia: "8000 RPM", capacidad: "124.6 cc", torque: "10.8 Nm", motor: "Motor de DTSi", precio: 26400, imagenmoto: "Discover 125"))
        
        
    }
    
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return productos.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopCell", for: indexPath) as! firstcellTableViewCell
        
        cell.labelCell.text = productos[indexPath.row].nombre
        cell.imagenCell.image = UIImage(named: productos[indexPath.row].imagenmoto)
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "description" {
            let indexPath = products.indexPathForSelectedRow
            let destino = segue.destination as! SecondViewController
            destino.offisrtview = productos[(indexPath?.row)!]
            
          
        }
      
        if segue.identifier == "carrito"{
            let indexPath = products.indexPathForSelectedRow
            let destino = segue.destination as! ShoppingViewController
            destino.shoping = shop
            print(destino.show)
        }

    }
    @IBAction func unwindSecondView(segue: UIStoryboardSegue)
    {
        if let origin = segue.source as? SecondViewController
        {
            let data = origin.offisrtview
            shop.append(data!)
            print(shop)
            self.products.reloadData()
        }
    }

    @IBAction func unsegueSecondView(unwindSegue: UIStoryboardSegue){
 
    }
   
    /*
 func compratotal(tot:Producto) ->buy {
        var compra: buy 
        var Bnom: String
        var Bprec: Double
        var Bcan: Int
    
    var shoptotal = tot
        
    Bnom = shoptotal.nombre
    Bprec = shoptotal.precio
        compra.Bnombre = Bnom
        compra.Bprecio = Bprec
        
        return compra
        
    }
 */
    
}





