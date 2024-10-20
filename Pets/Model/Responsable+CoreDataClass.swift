//
//  Responsable+CoreDataClass.swift
//  Pets
//
//  Created by Ángel González on 18/10/24.
//
//

import Foundation
import CoreData

@objc(Responsable)
public class Responsable: NSManagedObject {
    func inicializaCon(_ dict: [String:Any]) {
        let nombre = (dict["nombre"] as? String) ?? ""
        let apellido_paterno = (dict["apellido_paterno"] as? String) ?? ""
        let apellido_materno = (dict["apellido_materno"] as? String) ?? ""
        let ciudad = (dict["ciudad"] as? String) ?? ""
        let estado = (dict["estado"] as? String) ?? ""
        let email = (dict["email"] as? String) ?? ""
        let tel = (dict["tel"] as? String) ?? ""
        self.nombre = nombre
        self.apellido_paterno = apellido_paterno
        self.apellido_materno = apellido_materno
        self.ciudad = ciudad
        self.estado = estado
        self.email = email
        self.tel = tel
    }
}
