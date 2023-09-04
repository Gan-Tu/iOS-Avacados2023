//
//  SettingsView.swift
//  Avocados
//
//  Created by Gan Tu on 9/4/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @State private var enableNotification: Bool = true
    @State private var enableBackgroundRefresh: Bool = false
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorTransparentLight"), radius: 8, x: 0, y:4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                // MARK: - SECTION #1
                Section(header: Text("General Settings"), content: {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }
                    
                    Toggle(isOn: $enableBackgroundRefresh) {
                        Text("Background refresh")
                    }
                })
                
                // MARK: - SECTION #2
                Section(header: Text("Application"), content: {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundStyle(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundStyle(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer").foregroundStyle(Color.gray)
                            Spacer()
                            Text("Gan Tu")
                        }
                        HStack {
                            Text("Designer").foregroundStyle(Color.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        HStack {
                            Text("Version").foregroundStyle(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message").foregroundStyle(Color.gray)
                            Spacer()
                            Text("Happy coding!")
                        }
                    }
                    
                })
            }
        }
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
