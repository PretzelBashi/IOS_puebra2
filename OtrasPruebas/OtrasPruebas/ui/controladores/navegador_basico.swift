//
//  ContentView.swift
//  OtrasPruebas
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

struct NavegadorBasico: View {
    @Environment(ControladorGeneral.self) var control
    var body: some View {
        //NavigationStack{            PantallaBasica()        }                
        TabView{ //Cada ventana tiene su propio navigation stack
            Tab("Mensajes", systemImage: "message"){
                NavigationStack{
                    PantallaBasica()
                }
            } .badge(control.mensajes.count)
            Tab("Mensajes", systemImage: "cross"){
                NavigationStack{
                    RegistrarUsuario()
                }
            }
        }
    }
}

#Preview {
    NavegadorBasico()
        .environment(ControladorGeneral())
}
