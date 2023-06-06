//
//  ContentView.swift
//  SwiftUIProject1
//
//  Created by Marko Zivanovic on 11.4.23..
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.0
    @State private var numbreOfPeople = 2
    @State private var tipPerecentage = 20
    
    let tipPerecentages = [0, 5, 10, 15, 20, 25, 30]
    
    var body: some View {
        Form {
            Section {
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    .keyboardType(.decimalPad)
            }
            Section {
                Text(checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
