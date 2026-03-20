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
            Tab("Publicaciones", systemImage: "tray.and.arrow.down.fill") {
                Inicio()
            }
            .badge(controlador.publicaciones.count)
            
            
            Tab("Perfil", systemImage: "tray.and.arrow.up.fill") {
                Text("Deberia hacer una pantalla de el perfil")
            }
            
            
            Tab("Configuración", systemImage: "person.crop.circle.fill") {
                Text("Tambien una de configuracion")
            }
            .badge("!")
        }
    }
}

#Preview{
    MenuBase()
        .environment(ControladorGeneral())
}
