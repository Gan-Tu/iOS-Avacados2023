//
//  AppView.swift
//  Avacados
//
//  Created by Gan Tu on 9/4/23.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem { Image("tabicon-branch"); Text("Avaocados") }
            
            ContentView()
                .tabItem { Image("tabicon-book"); Text("Recipes") }
            
            RipeningStagesView()
                .tabItem { Image("tabicon-avocado"); Text("Ripening") }
            
            SettingsView()
                .tabItem { Image("tabicon-settings"); Text("Settings") }
        }
        .accentColor(.primary)
    }
}

#Preview {
    AppView()
}
