//
//  TableViewViewController.swift
//  tienda
//
//  Created by macbook on 21/09/18.
//  Copyright © 2018 TitiBAss. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  
    @IBOutlet weak var marca: UILabel!

    @IBOutlet weak var potencia: UILabel!
    @IBOutlet weak var capacidad: UILabel!
    @IBOutlet weak var motor: UILabel!
    @IBOutlet weak var torque: UILabel!
    
    @IBOutlet weak var imagen: UIImageView!
    
    @IBOutlet weak var precio: UILabel!
    
    var offisrtview: Producto!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let pre = String(offisrtview.precio)
        marca.text = offisrtview.nombre
        imagen.image = UIImage(named: offisrtview.imagenmoto)
        precio.text = pre
        capacidad.text = offisrtview.capacidad
        motor.text = offisrtview.motor
        potencia.text = offisrtview.potencia
        torque.text = offisrtview.torque

 }
    
    @IBAction func buynew(_ sender: Any) {
        viewDidLoad()
    }
}
