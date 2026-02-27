//
//  AnatomiaAplicacionApp.swift
//  AnatomiaAplicacion
//
//  Created by alumno on 2/27/26.
//

import SwiftUI

@main
struct AnatomiaAplicacionApp: App {
    @State var controlador = ControladorDeAplicacion()
    var body: some Scene {
        WindowGroup {
            PantallaInicial()
                .environment(controlador)  //Esto lo hace accesible a todas las pantallas
        }
    }
}
