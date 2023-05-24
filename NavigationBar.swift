//
//  NavigationBar.swift
//  SwiftUIProject1
//
//  Created by Marko Zivanovic on 25.5.23..
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
            }
            .navigationTitle("SwiftUI Navigation Bar")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
