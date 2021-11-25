//
//  AgregarContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class AgregarContactoController : UIViewController {
    
    @IBOutlet weak var txtId: UITextField!
    @IBOutlet weak var txtTitulo: UITextField!
    @IBOutlet weak var txtArtista: UITextField!
    @IBOutlet weak var txtAlbum: UITextField!
    @IBOutlet weak var txtAnno: UITextField!
    @IBOutlet weak var txtPais: UITextField!
    @IBOutlet weak var txtGenero: UITextField!
    @IBOutlet weak var txtDuracion: UITextField!
    @IBOutlet weak var txtUpc: UITextField!
    @IBOutlet weak var txtTag: UITextField!
    
    
    var callBackAgregarCancion : ((Cancion) -> Void)?
    override func viewDidLoad() {
        self.title = "Agregar Cancion"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        let id = txtId.text!
        let titulo = txtTitulo.text!
        let artista = txtArtista.text!
        let album = txtAlbum.text!
        let anno = txtAnno.text!
        let pais = txtPais.text!
        let genero = txtGenero.text!
        let duracion = txtDuracion.text!
        let upc = txtUpc.text!
        let tag = txtTag.text!
        
        let cancion = Cancion(id: id, titulo: titulo, artista: artista, album: album, anno: anno, pais: pais, genero: genero, duracion: duracion, upc: upc, tag: tag)
        
        callBackAgregarCancion!(cancion)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
