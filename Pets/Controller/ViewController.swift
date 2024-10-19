//
//  ViewController.swift
//  Pets
//
//  Created by Ángel González on 18/10/24.
//

import UIKit

class ViewController: UIViewController {

    var laMascota : Mascota!
    var detalle: DetailView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detalle = DetailView(frame:view.bounds.insetBy(dx: 40, dy: 40))
        view.addSubview(detalle)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        var info = "\(laMascota.tipo ?? "")\n" +
        "Nombre: \(laMascota.nombre ?? "")\n" +
        "Edad: \(laMascota.edad)\n"
        if laMascota.responsable != nil {
            info += "\nRESPONSABLE\nNombre:\(laMascota.responsable!.nombre ?? "") \(laMascota.responsable!.apellido_paterno ?? "")"
        }
        else {
            info += "\nDISPONIBLE PARA ADOPCIÓN"
        }
        detalle.tv.text = info
    }


}

