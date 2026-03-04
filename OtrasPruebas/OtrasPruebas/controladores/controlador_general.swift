//
//  controlador_general.swift
//  OtrasPruebas
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

@Observable
class ControladorGeneral {
    public var mensajes: [Mensaje]
    public var usuarios: [Usuario]
    
    init() {
        mensajes = []
        usuarios = []
    }
    
    func agregar_mensajes(){
        mensajes += [Mensaje(texto: "Mensaje de: \(mensajes.count + 1)", id_usuario: nil)]
    }
    
    func agregar_usuarios(_ usuario_nuevo: Usuario){
        usuarios.append(usuario_nuevo)
        
        print("La cantidad actual de usuarios es: \(usuarios.count)")
    }
}
