//
//  vista_cometnario.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 23/03/26.
//
import SwiftUI

struct VistaComentario: View {
    var comentario: Comentario
    
    var body: some View {
        VStack{
            Text("\(comentario.name)")
                .font(Font.system(size: 25, weight: .bold, design: .default))
                .padding(10)
                .foregroundStyle(Color.gray)
            Text("\(comentario.body)")
                .foregroundStyle(Color.black)
                
        }
        .padding(15)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
        .padding(10)
    }
}
