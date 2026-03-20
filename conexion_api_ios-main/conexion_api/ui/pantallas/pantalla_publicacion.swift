//
//  pantalla_publicacion.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 13/03/26.
//
import SwiftUI

struct PantallaPublicacion: View {
    var id: Int
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        if( controlador.publicacion == nil){
            switch(controlador.estado){
                case .descargando_publicacion:
                    Text("Descargando los datos")
                    
                case .en_espera:
                    Text("-----")
                        .onAppear{
                            controlador.descargar_publicacion(id: id)
                        }
                case .error_en_descarga:
                    Text("Existe un error en la descarga")
                    
                default:
                    Text("Si ves esto, puedes mostrar esta pantalla por una galleta.")
            }
        }
        else {
            
            VStack{
                //Titulo de publicacion
                Text("\(controlador.publicacion?.title ?? "")")
                    .padding(.top, 30)
                    .padding(.bottom, 30)
                    .font(Font.largeTitle.bold())
                ScrollView(.vertical) {
                    ForEach(controlador.publicacion?.comentarios ?? [Comentario]()){ comentario in
                        VStack(){
                            Text("Usuario: \(comentario.name)")
                                .padding(.bottom, 10)
                                .font(Font.largeTitle.bold())
                                .font(.system(size: 13))
                            Text("Comentario: \(comentario.body)")
                                .padding(.bottom, 10)
                        }
                        .frame(width: 300)
                        .padding(10)
                        .background(Color.gray.opacity(0.3))
                        .padding(.bottom, 10)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .background(Color.gray.opacity(0.2))
        }
    }
}

#Preview {
    PantallaPublicacion(id: 2)
        .environment(ControladorGeneral())
}
