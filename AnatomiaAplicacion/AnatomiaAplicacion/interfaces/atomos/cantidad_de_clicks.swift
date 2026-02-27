//
//  cantidad_de_clicks.swift
//  AnatomiaAplicacion
//
//  Created by alumno on 2/27/26.
//

import SwiftUI

struct CantidadDeClicks: View {
    @Environment(ControladorDeAplicacion.self) var controlador
    
    var body: some View {
        VStack {
            Text("Cantidad total de clicks \(controlador.cantidad_total_de_clicks)")
        }
    }
}

#Preview {
    CantidadDeClicks()
        .environment(ControladorDeAplicacion())
}
