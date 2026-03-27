//
//  Untitled.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 23/03/26.
//
import SwiftUI

struct VistaPublicacion: View{
    var publicacion: Publicacion
    
    var body: some View{
        Text("\(publicacion.title)")
            .font(Font.system(size: 40, weight: .bold, design: .default))
            .foregroundStyle(Color(.orange))
            .padding(.bottom, 20)
            .padding(.top, 30)
        
        VStack{
            if let usuario = publicacion.usuario{
                HStack{
                    Circle()
                        .frame(width: 50)
                        .foregroundStyle(Color(.orange))
                    NavigationLink{
                        PantallaUsuario(id: usuario.id)
                    } label: {
                        MiniVistaUsuario(usuario: usuario)
                    }
                    .foregroundStyle(Color.orange.opacity(0.8))
                        .font(Font.system(size: 30, weight: .bold, design: .default))
                }
                
            }
            else {
                Text("Error")
            }
        }
        ScrollView{
            ForEach(publicacion.comentarios ?? []){comentario in
                VistaComentario(comentario: comentario)
            }
        }
    }
}

#Preview{
    NavigationStack{
        PantallaPublicacion(id: 3)
            .environment(ControladorGeneral())
    }
}
