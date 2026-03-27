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
        NavigationStack{
            switch(controlador.estado){
                case .descargando_publicaciones:
                    Text("CArgando, por favor espera")
                    
                case .en_espera:
                    ScrollView{
                        ForEach(controlador.publicaciones){ publicacion in
                            HStack(){
                                NavigationLink{
                                    PantallaPublicacion(id: publicacion.id)
                                } label: {
                                    Text(publicacion.userId.description)
                                    
                                        .font(.system(size: 35, weight: .bold))
                                        .foregroundStyle(Color.orange)
                                        .padding(.trailing, 10)
                                    
                                }
                                NavigationLink{
                                    PantallaPublicacion(id: publicacion.id)
                                } label: {
                                    Text(publicacion.title)
                                        .foregroundStyle(Color.black)
                                        .multilineTextAlignment(.leading)
                                }
                            }
                            .padding(10)
                            .padding(.leading, 10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray.opacity(0.1))
                            .padding(.top,10)
                            
                            
                            /*.simultaneousGesture(TapGesture().onEnded {
                                controlador.publicacion = nil
                                controlador.descargar_publicacion(id: publicacion.id)
                            }
                            )*/
                            
                        }
                        
                    }
                    
                    
                case .descargando_publicacion:
                    Image(systemName: "arrowshape.down.circle")
                        .symbolEffect(.pulse)
                case .error_en_descarga:
                    Text("ERROR: Asegurate de tener wifi!!!")
            }
        }
        .onAppear{
            controlador.descargar_publicaciones()
        }
        
    }
}

#Preview {
    Inicio()
        .environment(ControladorGeneral())
}
