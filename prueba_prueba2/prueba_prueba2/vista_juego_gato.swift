//
//  vista_juego_gato.swift
//  prueba_prueba2
//
//  Created by alumno on 2/11/26.
//

import SwiftUI

struct VistaJuegoGato: View {
    
    @State var nombre_jugador: String = ""

    
    var body: some View {
        
        HStack {
            VStack {
                BotonTicTac()
                BotonTicTac()
                BotonTicTac()
            }
            VStack {
                BotonTicTac()
                BotonTicTac()
                BotonTicTac()
            }
            VStack {
                BotonTicTac()
                BotonTicTac()
                BotonTicTac()
            }
        }
        Text("X ha ganado")
        Button("Reiniciar") {
        }
    }
}

#Preview {
    VistaJuegoGato()
}
