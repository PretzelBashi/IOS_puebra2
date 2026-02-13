//
//  objetos_interactivos.swift
//  prueba_prueba2
//
//  Created by alumno on 2/13/26.
//

import SwiftUI

struct objetos_interactivos: View {
    
    @State var nombre_jugador: String = ""
    @State var contrasena_jugador: String = ""
    @State private var speed = 50.0
    @State private var cajaTexto: String = "This is some editable text..."
    @State private var activarTexto = false
    

    @State private var minValue = 0.0
    @State private var maxValue = 100.0
    
    var body: some View {
        
        TextField("Introduce tu nombre",text: $nombre_jugador).padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 10))
        
        SecureField("Introduce la constrasena",text: $contrasena_jugador).padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 10))
        
        
        Gauge(value: speed, in: minValue...maxValue) {
            Text("Medidor slider")
        } currentValueLabel: {
            Text("\(Int(speed))")
        } minimumValueLabel: {
            Text("\(Int(minValue))")
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
        }.padding(15)
            

        Slider(
            value: $speed,
            in: 0...100,
            step: 1
        ) {
            Text("Speed")
        } minimumValueLabel: {
            Text("0")
        } maximumValueLabel: {
            Text("100")
        }.padding(15)
        
        Text("\(speed)")
        
        
        List {
            Text("Opcion 1")
            Text("Opcion 2")
            Text("Opcion 3")
        }
        
        
        Toggle(isOn: $activarTexto) {
            Text("Activar caja de texto")
            Text("Activa la caja caja de texto")
        }.padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
        
        
        if(activarTexto){
            TextEditor(text: $cajaTexto)
                .foregroundColor(Color.gray)
                .font(.custom("HelveticaNeue", size: 13))
            }
        }
}

#Preview{
    objetos_interactivos()
}
