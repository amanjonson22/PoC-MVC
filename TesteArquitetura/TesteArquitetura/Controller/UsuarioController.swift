//
//  UsuarioController.swift
//  TesteArquitetura
//
//  Created by AMANDA CAROLINE DA SILVA RODRIGUES on 09/10/24.
//

import Foundation

class UsuarioController: ObservableObject {
    @Published var usuario: Usuario?

    func fetchUser() {
        usuario = Usuario(nome: "Duolingo", desc: "App para aprender novos idiomas")
    }
}
