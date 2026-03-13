//
//  pantalla_publicacion.swift
//  AaccesoAPI
//
//  Created by alumno on 3/13/26.
//

import SwiftUI

struct PantallaPublicacion: View {
    var id: Int
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        switch(controlador.estado){
        case .descargar_datos: Text("Descargando los datos")
                .onAppear{
                    controlador.descargar_publicacion(id: id)
                }
        case .mostrar_datos: Text("\(controlador.publicacion)")
        case .error_en_descarga: Text("Existe un error en la descarga")
        }
    }
}


#Preview {
    PantallaPublicacion(id: 1)
        .environment(ControladorGeneral())
}
