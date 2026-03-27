//
//  pantalla_configuracion.swift
//  conexion_api
//
//  Created by alumno on 3/27/26.
//

import SwiftUI

struct PantallaConfiguracion: View {
    var body: some View {
        Text("Configuracion")
            .font(Font.system(size: 50, weight: .bold, design: .default))
            .padding(.top, 100)
            .foregroundStyle(Color(.orange))
        VStack(alignment: .leading){
            
            Text("Aqui habrian opciones de configuracion")
                .font(Font.system(size: 30, weight: .bold, design: .default))
                .padding(.top, 100)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 15)
            
        Spacer()
    }
}

#Preview {
    PantallaConfiguracion()
}
