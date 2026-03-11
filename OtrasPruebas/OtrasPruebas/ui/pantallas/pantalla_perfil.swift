//
//  pantalla_perfil.swift
//  OtrasPruebas
//
//  Created by alumno on 3/11/26.
//

import SwiftUI

struct PantallaPerfil: View {
    var usuario_actual: Usuario
    /*
     let id = UUID()
     
     let nombre: String
     let edad: String
     
     let apodo: String
     let instagram: String
     
     let activo: Bool
     */
    var body: some View {
        VStack(spacing:0){
            VStack {
                ZStack{
                    Circle()
                        .frame(width: 115)
                        .foregroundStyle(usuario_actual.activo ? Color.green : Color.gray)
                    Circle()
                        .frame(width: 100)
                        .foregroundStyle(Color.blue)
                }
                Text(usuario_actual.apodo)
                    .font(Font.largeTitle.bold())
                    .foregroundStyle(Color.blue)
                Text(usuario_actual.instagram)
            }
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(Color("gris_claro_fondo"))
            
            VStack(alignment: .leading) {
                HStack{
                    Text("ID:").foregroundStyle(Color.blue)
                        .font(.system(size: 25))
                    Text("\(usuario_actual.id)")
                        .font(.system(size: 25))
                }
                    .padding(5)
                HStack{
                    Text("Nombre:").foregroundStyle(Color.blue)
                        .font(.system(size: 25))
                    Text(usuario_actual.nombre)
                        .font(.system(size: 25))
                }
                    .padding(5)
                HStack{
                    Text("Edad:").foregroundStyle(Color.blue)
                        .font(.system(size: 25))
                    Text("\(usuario_actual.edad) años")
                        .font(.system(size: 25))
                }
                    .padding(5)
            }
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(Color("gris_fondo"))
                .padding(0)
        }
            .cornerRadius(20)
    }
}
