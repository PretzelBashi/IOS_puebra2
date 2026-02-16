//
//  ContentView.swift
//  InterfazDeFantasia
//
//  Created by alumno on 2/16/26.
//

import SwiftUI



struct PrimeraPantalla: View {
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            
            Rectangle().ignoresSafeArea()
            IconoNumero1(nombre: "Hola")
        }

    }
}

#Preview {
    PrimeraPantalla()
}
