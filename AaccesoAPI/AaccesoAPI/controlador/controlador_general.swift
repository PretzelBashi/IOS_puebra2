//
//  controlador_general.swift
//  AaccesoAPI
//
//  Created by alumno on 3/13/26.
//
import SwiftUI

@Observable
class ControladorGeneral{
    let url_base = "https://jsonplaceholder.typicode.com"
    public var estado: EstadosControladorGeneral
    public var publicaciones: [Publicacion] = []
    public var publicacion: Publicacion? = nil
    
    init(){
        estado = .descargar_datos
        
        descargar_publicaciones()
    }
    
    func descargar_publicacion(id: String) {
        estado = .descargar_datos
        Task{
            try await Task.sleep(for: .seconds(1))
            await _descargar_publicaciones(id: id)
        }
    }
    
    private func _descargar_publicacion(id: String) async {
        let url = url_base + "/posts/\(id)"
        
        let publicacion: Publicacion? = await ServicioAPI.descargar_informacion(desde: url)
        
        if let publicacion = publicacion {
            self.publicacion = publicacion
            estado = .mostrar_datos
        } else {
            estado = .error_en_descarga
        }
    }
    
    func descargar_publicaciones() {
        Task{
            try await Task.sleep(for: .seconds(1))
            await _descargar_publicaciones()
        }
    }
    
    private func _descargar_publicaciones() async {
        let url = url_base + "/posts"
        
        let respuesta: [Publicacion]? = await ServicioAPI.descargar_informacion(desde: url)
        
        if let respuesta = respuesta {
            publicaciones = respuesta
            estado = .mostrar_datos
        } else {
            estado = .error_en_descarga
        }
    }
}
