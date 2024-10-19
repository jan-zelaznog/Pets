//
//  ViewController.swift
//  Pets
//
//  Created by Ángel González on 18/10/24.
//

import UIKit

class ViewController: UIViewController {

    var laMascota : Mascota!
    let tv = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tv)
        tv.frame = view.bounds.insetBy(dx: 40, dy: 40)
        tv.backgroundColor = .lightGray
        tv.isEditable = false
        tv.font = UIFont.systemFont(ofSize: 22)
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
        tv.text = info
    }


}

