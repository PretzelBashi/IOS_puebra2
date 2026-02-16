//
//  icono_numero_1.swift
//  InterfazDeFantasia
//
//  Created by alumno on 2/16/26.
//

import SwiftUI

struct IconoNumero1: View {
    var nombre: String
    var tamano : CGFloat = 100
    
    var body: some View {
        Image(systemName: "square.and.arrow.up")
            .resizable()
            .scaledToFit()
            .frame(width: tamano, height: tamano)
            .foregroundStyle(Color.magenta)
            .padding()
            .background(Color.red)
            .mask(Circle())
    }
}
