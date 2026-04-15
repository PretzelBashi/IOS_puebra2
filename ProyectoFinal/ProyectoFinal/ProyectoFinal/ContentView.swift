//
//  ContentView.swift
//  ProyectoFinal
//
//  Created by alumno on 4/13/26.
//

import SwiftUI
import RealityKit
import mundo_virtual

struct ContentView: View {
    @State var lejitud:Float = 0.0
    @Environment(ControladorAplicacion.self) var controlador
    
    var body: some View {
        ZStack{
            Rectangle()
            HStack{
                switch controlador.estado{
                case .iniciando:
                    Text("Cargando...")
                        .foregroundStyle(Color.red)
                case .todo_cargado:
                    RealityView{raiz_de_escena in
                        raiz_de_escena.add(controlador.raiz_escena)
                    }
                }

            }
        }
        
        Slider(value: $lejitud, in: 0...5)
            .onChange(of: lejitud, controlador.alejar_planetas(lejitud: lejitud))
        Button{
            controlador.alejar_planetas(lejitud: lejitud)
        }
        label:{
            Text("Alejar planetas")
        }
    }
}


#Preview {
    ContentView()
        .environment(ControladorAplicacion())
}
