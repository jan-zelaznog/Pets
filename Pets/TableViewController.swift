//
//  TableViewController.swift
//  Pets
//
//  Created by Ángel González on 18/10/24.
//

import UIKit

class TableViewController: UITableViewController {
    var mascotas = [Mascota]()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mascotas = DataManager.shared.todasLasMascotas()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mascotas.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mascotaCell", for: indexPath)
        let m = mascotas[indexPath.row]
        cell.textLabel?.text = m.nombre
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let m = mascotas[indexPath.row]
        performSegue(withIdentifier:"show", sender:m)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let destino = segue.destination as! ViewController
        // Pass the selected object to the new view controller.
        destino.laMascota = sender as? Mascota
    }

}
