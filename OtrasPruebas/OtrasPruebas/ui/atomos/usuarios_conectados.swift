//
//  pantalla_basica.swift
//  OtrasPruebas
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

struct UsuariosConectados: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack(){
                ForEach(controlador.usuarios){usuario in
                    NavigationLink{
                        PantallaPerfil(usuario_actual: usuario)
                    }
                    label: {
                        VStack(alignment: .center){
                            ZStack{
                                Circle()
                                    .foregroundStyle(usuario.activo ? Color.green : Color.gray)
                                    .frame(width: 80)
                                Circle()
                                    .frame(width: 70)
                                    
                            }
                            
                            Text("\(usuario.nombre)")
                            Spacer()
                        }
                        .padding(.top,10)
                            .frame(width: 100, height: 160)
                    }
                }
            }
        }
            .padding(.top,10)
            .padding(.leading,20)
            .padding(.trailing,20)
            .frame(width: 380, height: 170)
            .background(Color("gris_fondo"))
            .cornerRadius(30)
    }
}

#Preview {
    NavigationStack {
        UsuariosConectados()
    }
    .environment(ControladorGeneral())
}
