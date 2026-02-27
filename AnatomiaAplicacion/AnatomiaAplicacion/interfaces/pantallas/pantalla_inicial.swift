//
//  ContentView.swift
//  AnatomiaAplicacion
//
//  Created by alumno on 2/27/26.
//

import SwiftUI

struct PantallaInicial: View {
    
    var body: some View {
        CantidadDeClicks()
        AgregarClicksBoton()
        DecrementarClicksBoton()
    }
}

#Preview {
    PantallaInicial()
        .environment(ControladorDeAplicacion())
}

/*
 3 Carpetas minimo
 
 */
