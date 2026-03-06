//
//  pantalla_basica.swift
//  OtrasPruebas
//
//  Created by alumno on 3/2/26.
//

import SwiftUI

struct PantallaBasica: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        Text("Esta pantalla me mueve a la siguiente opcion")

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
        
        
                        
        ScrollView(.vertical){
            LazyVStack(){
                ForEach(controlador.mensajes){mensaje in
                    NavigationLink{
                        Text("Esta es la pantalla del \(mensaje)")
                    }
                    label: {
                        VStack(alignment: .leading){
                            Text("\(mensaje.id_usuario ?? "Anonimo")")
                            Text("\(mensaje.texto)")
                        }
                            .padding(10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.white)
                        
                    }
                }
            }
            .background(Color.gray)
        }
        
        
        
        
        Spacer()
        Text("Agregar un Hola")
            .onTapGesture {controlador.agregar_mensajes()}
        
        NavigationLink{
            RegistrarUsuario()
        }
        label: {
            Text("Agregar usuario")
        }
    }
    
    
}

#Preview {
    NavigationStack {
        PantallaBasica()
    }
    .environment(ControladorGeneral())
}
