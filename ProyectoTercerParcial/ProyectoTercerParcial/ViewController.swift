//
//  ViewController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import UIKit

var canciones : [Cancion] = []

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvCanciones: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return canciones.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaContacto") as! CeldaContactoController
        
        celda.lblTitulo.text = canciones[indexPath.row].titulo
        celda.lblArtista.text = canciones[indexPath.row].artista
        celda.lblAlbum.text = "\("Album: ") \(canciones[indexPath.row].album)"
        celda.lblAnno.text = canciones[indexPath.row].anno

        return celda
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToVer" {
            let cancionSeleccionada = canciones[tvCanciones.indexPathForSelectedRow!.row]
            let destino = segue.destination as! VerContactoController
            destino.cancion = cancionSeleccionada
            destino.indice = tvCanciones.indexPathForSelectedRow!.row
            destino.callbackActualizarTVCanciones = actualizarTVCanciones
            destino.callbackEliminarCancion = eliminarCancion
        }
        
        if segue.identifier == "goToCreacion" {
            let destino = segue.destination as! AgregarContactoController
            destino.callBackAgregarCancion = agregarCancion
        }
    }
    
    
    override func viewDidLoad() {
        self.title = "Lista de Canciones"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        canciones.append(Cancion(id: "1", titulo: "El amor", artista: "Mario El cantante", album: "La vida", anno: "2008", pais: "Argentina", genero: "Rock", duracion: "2:12", upc: "000000", tag: "#amor"))
        canciones.append(Cancion(id: "2", titulo: "Rumba", artista: "KR JR", album: "Party", anno: "2017", pais: "Puerto Rico", genero: "Regueton", duracion: "3:01", upc: "111111", tag: "#rumba"))
        canciones.append(Cancion(id: "3", titulo: "Move on", artista: "Anne", album: "Just Songs", anno: "2010", pais: "USA", genero: "Pop", duracion: "2:54", upc: "222222", tag: "#move"))
        canciones.append(Cancion(id: "4", titulo: "Destroy you", artista: "Aniquilator", album: "Aniquilator", anno: "1992", pais: "Alemania", genero: "Metal", duracion: "3:23", upc: "333333", tag: "#destroy"))
        canciones.append(Cancion(id: "5", titulo: "Corre", artista: "Juan Garcia", album: "Se libre", anno: "2020", pais: "Mexico", genero: "Pop", duracion: "2:49", upc: "444444", tag: "#corre"))
        canciones.append(Cancion(id: "6", titulo: "El Coyote", artista: "Rancho Alterado", album: "Cotorreando", anno: "2019", pais: "Mexico", genero: "Corrido", duracion: "2:55", upc: "555555", tag: "#coyote"))
        canciones.append(Cancion(id: "7", titulo: "The Hood", artista: "Hard-B", album: "Gangster Forever", anno: "1997", pais: "USA", genero: "Hip-Hop", duracion: "3:32", upc: "666666", tag: "#hood"))
        canciones.append(Cancion(id: "8", titulo: "Sonidos", artista: "Grupo Bajo", album: "Ritmo", anno: "2006", pais: "Mexico", genero: "Techno", duracion: "4:04", upc: "777777", tag: "#sonidos"))
        canciones.append(Cancion(id: "9", titulo: "Vamos a bailar", artista: "El Mono", album: "Alambreado", anno: "2011", pais: "Mexico", genero: "Banda", duracion: "3:42", upc: "888888", tag: "#bailar"))
        canciones.append(Cancion(id: "10", titulo: "La Disco", artista: "KR JR", album: "Party", anno: "2017", pais: "Puerto Rico", genero: "Regueton", duracion: "2:47", upc: "999999", tag: "#disco"))
    }
    
    func actualizarTVCanciones() {
        tvCanciones.reloadData()
    }
    
    func eliminarCancion(indice : Int) {
        canciones.remove(at: indice)
        actualizarTVCanciones()
    }
    
    func agregarCancion(cancion: Cancion) {
        canciones.append(cancion)
        actualizarTVCanciones()
    }
}

