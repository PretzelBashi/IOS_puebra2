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
                        Text("Esta es la pantalla del \(usuario)")
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
                            .padding(10)
                            .frame(width: 100, height: 200)
                    }
                }
            }
        }
            .padding(.top,20)
            .frame(width: 380, height: 200)
    }
}

#Preview {
    NavigationStack {
        UsuariosConectados()
    }
    .environment(ControladorGeneral())
}
