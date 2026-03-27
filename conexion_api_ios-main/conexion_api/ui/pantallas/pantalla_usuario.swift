//
//  pantalla_usuario.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 25/03/26.
//
import SwiftUI

struct PantallaUsuario: View {
    var id: Int
    
    @State var gestor_usuario = ControladorUsuario()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            switch(gestor_usuario.estado){
                case .descargando:
                    Image(systemName: "arrow.down.circle.fill")
                        .symbolEffect(.breathe)
                    
                case .error_en_la_descarga:
                    Text("Hay un problema en alguna parte")
                    
                case .esperando:
                    if let usuario = gestor_usuario.usuario{
                        VStack(){
                            Circle()
                                .frame(width: 100)
                                .foregroundStyle(Color(.orange))
                                .padding(.top, 100)
                            Text("\(usuario.name)")
                                .font(Font.system(size: 50, weight: .bold, design: .default))
                                
                                .foregroundStyle(Color(.orange))
                        }
                        
                        Text("\(usuario.username)")
                            .font(Font.system(size: 20, weight: .bold, design: .default))
                        Text("\(usuario.email)")
                            .font(Font.system(size: 20, weight: .bold, design: .default))
                        Text("\(usuario.phone)")
                            .font(Font.system(size: 20, weight: .bold, design: .default))
                        Text("\(usuario.website)")
                            .font(Font.system(size: 20, weight: .bold, design: .default))
                        Text("\(usuario.company.name)")
                            .font(Font.system(size: 20, weight: .bold, design: .default))
                        Spacer()
                    }
                    else {
                        Text("Error 404")
                    }
            }
            
        }.onAppear{
            gestor_usuario.descargar_usuario(id: id)
        }
    }
}

#Preview {
    PantallaUsuario(id: 5)
}
