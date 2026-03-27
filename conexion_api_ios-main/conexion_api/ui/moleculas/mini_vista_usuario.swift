//
//  mini_vista_usuario.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 23/03/26.
//
import SwiftUI

struct MiniVistaUsuario: View {
    var usuario: Usuario
    
    var body: some View {
        Text("\(usuario.name)")
    }
}
