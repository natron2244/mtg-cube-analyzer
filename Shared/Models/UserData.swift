//
//  UserData.swift
//  mtgcubeanalyzer
//
//  Created by Nathan Christensen on 2020-11-24.
//

import Foundation
import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var cube: Cube = exampleCube
}
