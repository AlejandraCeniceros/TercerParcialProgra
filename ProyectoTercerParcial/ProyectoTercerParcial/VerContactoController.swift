//
//  VerContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class VerContactoController : UIViewController {
    
    var indice : Int = -1
    var cancion : Cancion?
    var callbackActualizarTVCanciones : (() -> Void)?
    var callbackEliminarCancion : ((Int) -> Void)?
    
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblArtista: UILabel!
    @IBOutlet weak var lblAlbum: UILabel!
    @IBOutlet weak var lblAnno: UILabel!
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var lblDuracion: UILabel!
    @IBOutlet weak var lblUpc: UILabel!
    @IBOutlet weak var lblTag: UILabel!
    
    @IBOutlet weak var lblIdEditar: UILabel!
    @IBOutlet weak var lblTituloEditar: UILabel!
    @IBOutlet weak var lblArtistaEditar: UILabel!
    @IBOutlet weak var lblAlbumEditar: UILabel!
    @IBOutlet weak var lblAnnoEditar: UILabel!
    @IBOutlet weak var lblPaisEditar: UILabel!
    @IBOutlet weak var lblGeneroEditar: UILabel!
    @IBOutlet weak var lblDuracionEditar: UILabel!
    @IBOutlet weak var lblUpcEditar: UILabel!
    @IBOutlet weak var lblTagEditar: UILabel!
    
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
    
    @IBOutlet weak var btnBorrar: UIButton!
    @IBOutlet weak var btnEditar: UIButton!
    @IBOutlet weak var btnGuardar: UIButton!
    @IBOutlet weak var btnCancelar: UIButton!
    
    override func viewDidLoad() {
        self.title = "Ver Cancion"
        
        lblId.text = "\("ID: ") \(cancion!.id)"
        lblTitulo.text = cancion!.titulo
        lblArtista.text = cancion!.artista
        lblAlbum.text = "\("Album: ") \(cancion!.album)"
        lblAnno.text = cancion!.anno
        lblPais.text = cancion!.pais
        lblGenero.text = "\("Genero: ") \(cancion!.genero)"
        lblDuracion.text = "\("Duracion: ") \(cancion!.duracion)"
        lblUpc.text = "\("UPC: ") \(cancion!.upc)"
        lblTag.text = "\("Tag: ") \(cancion!.tag)"
        
        txtId.text = cancion!.id
        txtTitulo.text = cancion!.titulo
        txtArtista.text = cancion!.artista
        txtAlbum.text = cancion!.album
        txtAnno.text = cancion!.anno
        txtPais.text = cancion!.pais
        txtGenero.text = cancion!.genero
        txtDuracion.text = cancion!.duracion
        txtUpc.text = cancion!.upc
        txtTag.text = cancion!.tag
    }
    @IBAction func doTapEliminar(_ sender: Any) {
        callbackEliminarCancion!(indice)
        self.navigationController!.popViewController(animated: true)
    }
    
    @IBAction func doTapEditar(_ sender: Any) {
        self.title = "Editar Cancion"
        btnEditar.isEnabled = false
        btnEditar.isHidden = true
        btnBorrar.isEnabled = false
        btnBorrar.isHidden = true
        btnGuardar.isEnabled = true
        btnGuardar.isHidden = false
        btnCancelar.isEnabled = true
        btnCancelar.isHidden = false
        
        lblId.isHidden = true
        lblTitulo.isHidden = true
        lblArtista.isHidden = true
        lblAlbum.isHidden = true
        lblAnno.isHidden = true
        lblPais.isHidden = true
        lblGenero.isHidden = true
        lblDuracion.isHidden = true
        lblUpc.isHidden = true
        lblTag.isHidden = true
        
        lblIdEditar.isHidden = false
        lblTituloEditar.isHidden = false
        lblArtistaEditar.isHidden = false
        lblAlbumEditar.isHidden = false
        lblAnnoEditar.isHidden = false
        lblPaisEditar.isHidden = false
        lblGeneroEditar.isHidden = false
        lblDuracionEditar.isHidden = false
        lblUpcEditar.isHidden = false
        lblTagEditar.isHidden = false
        
        txtId.isEnabled = true
        txtId.isHidden = false
        txtTitulo.isEnabled = true
        txtTitulo.isHidden = false
        txtArtista.isEnabled = true
        txtArtista.isHidden = false
        txtAlbum.isEnabled = true
        txtAlbum.isHidden = false
        txtAnno.isEnabled = true
        txtAnno.isHidden = false
        txtPais.isEnabled = true
        txtPais.isHidden = false
        txtGenero.isEnabled = true
        txtGenero.isHidden = false
        txtDuracion.isEnabled = true
        txtDuracion.isHidden = false
        txtUpc.isEnabled = true
        txtUpc.isHidden = false
        txtTag.isEnabled = true
        txtTag.isHidden = false
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        self.title = "Ver Cancion"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblId.isHidden = false
        lblTitulo.isHidden = false
        lblArtista.isHidden = false
        lblAlbum.isHidden = false
        lblAnno.isHidden = false
        lblPais.isHidden = false
        lblGenero.isHidden = false
        lblDuracion.isHidden = false
        lblUpc.isHidden = false
        lblTag.isHidden = false
        
        lblIdEditar.isHidden = true
        lblTituloEditar.isHidden = true
        lblArtistaEditar.isHidden = true
        lblAlbumEditar.isHidden = true
        lblAnnoEditar.isHidden = true
        lblPaisEditar.isHidden = true
        lblGeneroEditar.isHidden = true
        lblDuracionEditar.isHidden = true
        lblUpcEditar.isHidden = true
        lblTagEditar.isHidden = true
        
        txtId.isEnabled = false
        txtId.isHidden = true
        txtTitulo.isEnabled = false
        txtTitulo.isHidden = true
        txtArtista.isEnabled = false
        txtArtista.isHidden = true
        txtAlbum.isEnabled = false
        txtAlbum.isHidden = true
        txtAnno.isEnabled = false
        txtAnno.isHidden = true
        txtPais.isEnabled = false
        txtPais.isHidden = true
        txtGenero.isEnabled = false
        txtGenero.isHidden = true
        txtDuracion.isEnabled = false
        txtDuracion.isHidden = true
        txtUpc.isEnabled = false
        txtUpc.isHidden = true
        txtTag.isEnabled = false
        txtTag.isHidden = true
        
        cancion!.id = txtId.text!
        cancion!.titulo = txtTitulo.text!
        cancion!.artista = txtArtista.text!
        cancion!.album = txtAlbum.text!
        cancion!.anno = txtAnno.text!
        cancion!.pais = txtPais.text!
        cancion!.genero = txtGenero.text!
        cancion!.duracion = txtDuracion.text!
        cancion!.upc = txtUpc.text!
        cancion!.tag = txtTag.text!
        
        lblId.text = txtId.text!
        lblTitulo.text = txtTitulo.text!
        lblArtista.text = txtArtista.text!
        lblAlbum.text = txtAlbum.text!
        lblAnno.text = txtAnno.text!
        lblPais.text = txtPais.text!
        lblGenero.text = txtGenero.text!
        lblDuracion.text = txtDuracion.text!
        lblUpc.text = txtUpc.text!
        lblTag.text = txtTag.text!
        
        callbackActualizarTVCanciones!()
    }
    
    @IBAction func doTapCancelar(_ sender: Any) {
        self.title = "Ver Cancion"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblId.isHidden = false
        lblTitulo.isHidden = false
        lblArtista.isHidden = false
        lblAlbum.isHidden = false
        lblAnno.isHidden = false
        lblPais.isHidden = false
        lblGenero.isHidden = false
        lblDuracion.isHidden = false
        lblUpc.isHidden = false
        lblTag.isHidden = false
        
        lblIdEditar.isHidden = true
        lblTituloEditar.isHidden = true
        lblArtistaEditar.isHidden = true
        lblAlbumEditar.isHidden = true
        lblAnnoEditar.isHidden = true
        lblPaisEditar.isHidden = true
        lblGeneroEditar.isHidden = true
        lblDuracionEditar.isHidden = true
        lblUpcEditar.isHidden = true
        lblTagEditar.isHidden = true
        
        txtId.isEnabled = false
        txtId.isHidden = true
        txtTitulo.isEnabled = false
        txtTitulo.isHidden = true
        txtArtista.isEnabled = false
        txtArtista.isHidden = true
        txtAlbum.isEnabled = false
        txtAlbum.isHidden = true
        txtAnno.isEnabled = false
        txtAnno.isHidden = true
        txtPais.isEnabled = false
        txtPais.isHidden = true
        txtGenero.isEnabled = false
        txtGenero.isHidden = true
        txtDuracion.isEnabled = false
        txtDuracion.isHidden = true
        txtUpc.isEnabled = false
        txtUpc.isHidden = true
        txtTag.isEnabled = false
        txtTag.isHidden = true
        
        txtId.text = cancion!.id
        txtTitulo.text = cancion!.titulo
        txtArtista.text = cancion!.artista
        txtAlbum.text = cancion!.album
        txtAnno.text = cancion!.anno
        txtPais.text = cancion!.pais
        txtGenero.text = cancion!.genero
        txtDuracion.text = cancion!.duracion
        txtUpc.text = cancion!.upc
        txtTag.text = cancion!.tag
    }
    
    
}
