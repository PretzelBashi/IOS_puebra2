//
//  menu_base.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 18/03/26.
//
import SwiftUI

struct MenuBase: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        TabView{
            Tab("Publicaciones", systemImage: "square.and.pencil"){
                Inicio()
            }
            .badge(controlador.publicaciones.count)
            
            
            Tab("Perfil", systemImage: "person.crop.circle.fill") {
                PantallaUsuario(id: 7)
            }
            
            
            Tab("Configuración", systemImage: "gearshape") {
                PantallaConfiguracion()
            }
            .badge("!")
        }
    }
}

#Preview{
    MenuBase()
        .environment(ControladorGeneral())
}
