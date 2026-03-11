//
//  pantalla_mensaje.swift
//  OtrasPruebas
//
//  Created by alumno on 3/11/26.
//

//
//  pantalla_basica.swift
//  OtrasPruebas
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

struct PantallaMensaje: View {
    var mensaje_actual: Mensaje
    
    var body: some View {
        VStack(spacing:0){
            VStack {
                Text(mensaje_actual.id_usuario ?? "Anonimo")
                    .font(Font.largeTitle.bold())
                    .foregroundStyle(Color.blue)
            }
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(Color("gris_claro_fondo"))
            VStack {
                Text(mensaje_actual.texto)
            }
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(Color("gris_fondo"))
                .padding(0)
        }
            .cornerRadius(20)
    }
}

