//
//  registrar_usuario_pantalla.swift
//  OtrasPruebas
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

struct RegistrarUsuario: View {
    @State var nombre: String
    @State var instagram: String
    
    @State var edad: String
    @State var apodo: String
    
    var body: some View {
        TextField("Nombre: " , text: $nombre)
    }
}
