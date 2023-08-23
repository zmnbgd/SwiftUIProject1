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
    @FocusState private var amountIsFocused: Bool

    let tipPerecentages = [0, 5, 10, 15, 20, 25, 30]
    
    var totalPerPerson: Double {
        //MARK: Calculate total per person
        let peopleCount = Double(numbreOfPeople + 2)
        let tipSelection = Double(tipPerecentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    var totalCheckAmount: Double {
        let peopleCount = Double(numbreOfPeople + 2)
        let tipSelection = Double(tipPerecentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let totalAmountForCheck = checkAmount + tipValue
        
        return totalAmountForCheck
        
    }
    //MARK: Day 24 - Challenge 1. Go back to project 1 and use a conditional modifier to change the total amount text view to red if the user selects a 0% tip.
    var zeroTip: Bool {
        return tipPerecentage == 0
    }
    
    var body: some View {
        NavigationView {
            Form {
                //MARK: Check The Amount And Number Of People
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    Picker("Number of people", selection: $numbreOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                //MARK: Tip Percentage
                Section {
                    Picker("Tip perecentage", selection: $tipPerecentage) {
                       // ForEach(tipPerecentages, id: \.self) {
                        //MARK: Challenge 3. Change the tip percentage picker to show a new screen rather than using a segmented control, and give it a wider range of options – everything from 0% to 100%. Tip: use the range 0..<101 for your range rather than a fixed array.
                        ForEach(0..<101) {
                            Text($0, format: .percent)
                        }
                    }

                    .pickerStyle(.automatic)
                } header: {
                    Text("How much tip do you want to leave") 
                }
                //MARK: Challenge 2. Add another section showing the total amount for the check – i.e., the original amount plus tip value, without dividing by the number of people.
                //MARK: Day 24 - Challenge 1.
                Section {
                    Text(totalCheckAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .foregroundColor(zeroTip ? Color.red : Color.blue)
                } header: {
                    Text("Total check amount")
                }
                //MARK: Amount per Person
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    //MARK: Challenge 1: Add a header to the third section, saying “Amount per person”
                } header: {
                    Text("Amount per person")
                }
            }
            .navigationTitle("We split")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
