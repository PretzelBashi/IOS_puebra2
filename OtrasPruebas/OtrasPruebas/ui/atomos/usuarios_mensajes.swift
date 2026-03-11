//
//  pantalla_basica.swift
//  OtrasPruebas
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

struct UsuariosMensajes: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        ScrollView(.vertical){
            LazyVStack(){
                ForEach(controlador.mensajes){mensaje in
                    NavigationLink{
                        PantallaMensaje(mensaje_actual: mensaje)
                    }
                    label: {
                        HStack{
                            Circle()
                                .frame(width: 50)
                                .padding(.leading, 10)
                            VStack(alignment: .leading){
                                Text("\(mensaje.id_usuario ?? "Anonimo")")
                                Text("\(mensaje.texto)")
                            }
                                .padding(.bottom,20)
                                .padding(.top,20)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                            .background(Color.white)
                            .cornerRadius(20)                            
                            .padding(5)
                    }
                }
            }
                .background(Color("gris_fondo"))
            
            
        }
            .cornerRadius(20)
    }
}

#Preview {
    NavigationStack {
        UsuariosMensajes()
    }
    .environment(ControladorGeneral())
}
