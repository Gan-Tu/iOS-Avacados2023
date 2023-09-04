//
//  RipeningModel.swift
//  Avocados
//
//  Created by Gan Tu on 9/4/23.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
