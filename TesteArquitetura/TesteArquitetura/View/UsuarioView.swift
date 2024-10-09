//
//  UsuarioView.swift
//  TesteArquitetura
//
//  Created by AMANDA CAROLINE DA SILVA RODRIGUES on 09/10/24.
//

import Foundation

import SwiftUI

struct UsuarioView: View {
    @ObservedObject var controller = UsuarioController()

    var body: some View {
        VStack(alignment: .leading) {
            if let usuario = controller.usuario {
                HStack{
                    Text("Nome: ")
                        .fontWeight(.bold)
                    Text("\(usuario.nome)")
                }
                HStack(alignment: .top){
                    Text("Descrição: ")
                        .fontWeight(.bold)
                    Text("\(usuario.desc)")
                }
                
            } else {
                Text("Carregando...")
                    .onAppear {
                        controller.fetchUser()
                    }
            }
        }
        .padding()
    }
}
