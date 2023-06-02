//
//  BindingStateToUserInterfacecontrols.swift
//  SwiftUIProject1
//
//  Created by Marko Zivanovic on 2.6.23..
//

import SwiftUI

struct BindingStateToUserInterfacecontrols: View {
    
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("You name is \(name)")
        }
    }
}

struct BindingStateToUserInterfacecontrols_Previews: PreviewProvider {
    static var previews: some View {
        BindingStateToUserInterfacecontrols()
    }
}
