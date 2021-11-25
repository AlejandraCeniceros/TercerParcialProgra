//
//  Contacto.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation

class Cancion{
    var id : String
    var titulo : String
    var artista : String
    var album : String
    var anno : String
    var pais : String
    var genero : String
    var duracion : String
    var upc: String
    var tag : String

    init(id: String, titulo: String, artista: String, album: String, anno: String, pais: String, genero: String, duracion: String, upc: String, tag: String){
        self.id = id
        self.titulo = titulo
        self.artista = artista
        self.album = album
        self.anno = anno
        self.pais = pais
        self.genero = genero
        self.duracion = duracion
        self.upc = upc
        self.tag = tag
    }
}
