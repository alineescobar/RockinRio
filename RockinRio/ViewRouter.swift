//
//  ViewRouter.swift
//  RockinRio
//
//  Created by Aline Osana Escobar on 30/03/21.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .pesquisa
}

enum Page {
    case pesquisa
    case programacao
    case minhaAgenda
    case perfil
}
