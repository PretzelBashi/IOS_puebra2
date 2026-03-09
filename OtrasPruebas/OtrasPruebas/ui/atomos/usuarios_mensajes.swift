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
                        Text("Esta es la pantalla del \(mensaje)")
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
                                .padding(10)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }.background(Color.white)
                        
                        
                        
                    }
                }
            }
            .background(Color.gray)
        }
    }    
}

#Preview {
    NavigationStack {
        UsuariosMensajes()
    }
    .environment(ControladorGeneral())
}
