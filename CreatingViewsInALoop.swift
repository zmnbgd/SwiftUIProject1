//
//  CreatingViewsInALoop.swift
//  SwiftUIProject1
//
//  Created by Marko Zivanovic on 3.6.23..
//

import SwiftUI

struct CreatingViewsInALoop: View {
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

struct CreatingViewsInALoop_Previews: PreviewProvider {
    static var previews: some View {
        CreatingViewsInALoop()
    }
}
