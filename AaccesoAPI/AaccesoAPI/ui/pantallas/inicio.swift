//
//  inicio.swift
//  AaccesoAPI
//
//  Created by alumno on 3/13/26.
//

import SwiftUI

struct Inicio: View {
    @Environment(ControladorGeneral.self) var controlador
    var body: some View {
        Text("Hello, World!")
        
        switch(controlador.estado){
        case .descargar_datos: Text("Descargando datos")
        case .mostrar_datos:
            
            ScrollView{
                ForEach(controlador.publicaciones){publicacion in
                    Text(publicacion.title)
                    NavigationLink{
                        Text(controlador.publicacion)
                            .onAppear{
                                controlador.descargar_publicaciones(id: publicacion.id)
                            }
                    }
                }
            }

        case .error_en_descarga: Text("Error en descarga")
        }
        
        Text("\(controlador.estado)")
            .onAppear{
                controlador
                    .descargar_publicaciones()
        }
    }
}

#Preview {
    Inicio()
        .environment(ControladorGeneral())
}
