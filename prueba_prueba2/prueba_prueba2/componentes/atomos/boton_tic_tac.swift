//
//  boton_tic_tac.swift
//  prueba_prueba2
//
//  Created by alumno on 2/11/26.
//

import SwiftUI

struct BotonTicTac: View {
    @State var opcion_a_mostrar = 0

    
    let opciones = ["-", "X", "O"]
    
    var body: some View {
        VStack{
            
            switch opcion_a_mostrar{
                case 0: Text("-")
                    .padding(10)
                    .background(Color.yellow)
                    .cornerRadius(8)
                case 1: Text("X")
                    .padding(10)
                    .background(Color.red)
                    .cornerRadius(8)
                case 2: Text("O")
                    .padding(10)
                    .background(Color.green)
                    .cornerRadius(8)
            default: Text("-")
                    .padding(10)
                    .background(Color.yellow)
                    .cornerRadius(8)
            }
        }
        .padding(7)
        .onTapGesture {
            opcion_a_mostrar += 1
            
            opcion_a_mostrar %= 3
        }
    }
}

#Preview {
    BotonTicTac()
}
