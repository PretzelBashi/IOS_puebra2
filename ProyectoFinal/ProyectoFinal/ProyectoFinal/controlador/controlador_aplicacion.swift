//
//  controlador_aplicacion.swift
//  ProyectoFinal
//
//  Created by alumno on 4/15/26.
//
import SwiftUI
import RealityKit
import mundo_virtual

@Observable
@MainActor
public class ControladorAplicacion{
    public var escenario: Entity? = nil
    public var raiz_escena: Entity = Entity()
    
    public var estado: EstadosAplicacion = .iniciando
    
    private var planetas_cargados: [Entity] = []
    
    init(){
        Task.detached(priority: .high){
            await self.cargar_planetas()
        }
    }
    
    func cargar_planetas() async {
        
        defer{
            estado = .todo_cargado
        }
        
        var contador_de_blucle_for = 0
        
        for planeta in planetas{
            guard let planeta = try? await Entity(named: escenario_planeta, in: MundoVirtual) else {
                fatalError("No se ha podido cargar el modelo or smth idk")
            }
            
            planeta.position.y = Float(contador_de_blucle_for / 3) * 0.2
            planeta.position.x = Float(contador_de_blucle_for % 3) * 0.2
                        
            raiz_escena.addChild(planeta)
            planetas_cargados.append(planeta)
            
            contador_de_blucle_for += 1
        }
    }
    
    func alejar_planetas(lejitud: Float){
        for planetas_cargado in planetas_cargados {
            planetas_cargado.position.z = -lejitud
        }
    }
}
