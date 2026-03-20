//
//  inicio.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 13/03/26.
//
import SwiftUI


struct Inicio: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        Text("Hola mundo")
        NavigationStack{
            switch(controlador.estado){
                case .descargando_publicaciones:
                    Text("CArgando, por favor espera")
                    
                case .en_espera:
                    ScrollView{
                        ForEach(controlador.publicaciones){ publicacion in
                            NavigationLink{
                                PantallaPublicacion(id: publicacion.id)
                            } label: {
                                HStack(alignment: .center, spacing: 0){
                                    Text("\(publicacion.userId)")
                                        .padding(.leading, 7)
                                        .padding(.trailing, 7)
                                        .font(Font.largeTitle.bold())
                                        .font(.system(size: 20))
                                        .frame(maxHeight: .infinity)
                                        .background(Color.gray.opacity(0.5))
                                        .multilineTextAlignment(.leading)
                                        
                                    Text(publicacion.title)
                                        .multilineTextAlignment(.leading)
                                        .padding(.leading, 12)
                                    Spacer()
                                }
                                
                                .frame(maxWidth: .infinity)
                                .background(Color.gray.opacity(0.1))
                                .frame(height: 75)
                            }
                            .simultaneousGesture(TapGesture().onEnded {
                                controlador.publicacion = nil
                                controlador.descargar_publicacion(id: publicacion.id)
                            }
                            )
                            
                        }
                    }
                    
                    
                case .descargando_publicacion:
                    Text("")
                case .error_en_descarga:
                    Text("ERROR: Asegurate de tener wifi!!!")
            }
        }
        
    }
}

#Preview {
    Inicio()
        .environment(ControladorGeneral())
}
