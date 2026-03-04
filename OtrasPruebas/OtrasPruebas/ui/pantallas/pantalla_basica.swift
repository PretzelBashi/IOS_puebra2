//
//  pantalla_basica.swift
//  OtrasPruebas
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

struct PantallaBasica: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        Text("Esta pantalla me mueve a la siguiente opcion")
        
        Spacer()
        
        ForEach(controlador.mensajes){mensaje in
            NavigationLink{
                Text("Esta es la pantalla del \(mensaje.texto)")
            }
            label: {
                Text("Esta te lleva al mensaje \(mensaje.texto)")
            } .onAppear {
                print(mensaje)
            }
        }
        
        
        
        Spacer()
        Text("Agregar un Hola")
            .onTapGesture {controlador.agregar_mensajes()}
        
        NavigationLink{
            RegistrarUsuario()
        }
        label: {
            Text("Agregar usuario")
        }
    }
    
    
}

#Preview {
    NavigationStack {
        PantallaBasica()
    }
    .environment(ControladorGeneral())
}
