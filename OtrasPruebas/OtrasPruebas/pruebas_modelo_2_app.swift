//
//  OtrasPruebasApp.swift
//  OtrasPruebas
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

@main
struct PruebasModelo2App: App {
    @State var controlador = ControladorGeneral()
    var body: some Scene {
        WindowGroup {
            NavegadorBasico()
                .environment(controlador)
        }
    }
}
